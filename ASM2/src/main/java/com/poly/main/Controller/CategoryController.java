package com.poly.main.Controller;


import java.util.Optional;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.poly.main.Dao.CategoryDao;
import com.poly.main.Entity.Category;
import com.poly.main.Model.Categories;
import com.poly.main.Service.ParamService;
import com.poly.main.Service.SessionService;
import com.poly.main.Validator.CategoryValidator;

@Controller
public class CategoryController {
	@Autowired
	CategoryValidator categoryValidator;

	@Autowired
	CategoryDao dao;

	@Autowired
	ServletContext app;

	@Autowired
	SessionService session;
	
	@Autowired
	ParamService param;

	// binder data validate của category
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		Object target = binder.getTarget();
		if (target == null) {
			return;
		}
		if (target.getClass() == Categories.class) {
			binder.setValidator(categoryValidator);
		}
	}

	// mapping vào categoryForm.jsp, tạo entity, addAttribute entity vào categoryForm
	@GetMapping("/admin/categoryForm/form")
	public String index(Model model) {
		Categories entity = new Categories();
		model.addAttribute("categoryForm", entity);
		return "manager/categoryForm";
	}

	// mapping vào category table, khai báo keyword3, p, bằng optional
	@RequestMapping("/admin/categoryForm/list")
	public String index(Model model, @RequestParam("keyword3") Optional<String> name,
			@RequestParam("p") Optional<Integer> p) {
		// get keyword3 bằng session và gán vào findname
		String findName;
		if (session.get("keyword3") == null) {
			findName = name.orElse("");
		} else {
			findName = name.orElse(session.get("keyword3"));
		}
		
		// set findname vào keyword3
		session.set("keyword3", findName);
		
		// khai báo pageable = p
		Pageable pageable = PageRequest.of(p.orElse(0), 5);

		// gọi hàm dao.filltotable(findname,pageable) gán vào page
		Page<Category> page = dao.fillToTable("%" + findName + "%", pageable);
		model.addAttribute("userItem", page); // add Att page vào username

		return "manager/categoryTable";
	}

	// Mapping admin/categoryForm/list
	@RequestMapping("/admin/categoryForm/list/delete/{id}")
	public String delete(Model model, @PathVariable("id") int id) {
		// getid entity và delete entity theo id
		Category entity = dao.getById(id);
		dao.delete(entity);
		return "redirect:/admin/categoryForm/list";
	}

	// mapping admin/categoryForm/list
	@PostMapping("/admin/categoryForm/form")
	public String save(Model model, @ModelAttribute("categoryForm") @Validated Categories entity,
			BindingResult result) {
		if (result.hasErrors()) {
			return "manager/categoryForm";
		}
		// tạo category (name, image) và gọi hàm dao.save để save
		else {			
			Category category = new Category(entity.getName(), param.save(entity.getImage()));
			dao.save(category);
		}
		return "redirect:/admin/categoryForm/list";
	}
	
	// mapping categoryForm.jsp
	@GetMapping("/admin/categoryForm/list/load/{id}")
	public String load(Model model, @PathVariable("id") int id) {
		// lấy category theo id set tên vừa lấy vào entity
		Category category = dao.getById(id);
		Categories entity = new Categories();
		entity.setName(category.getName());
		// add Att true vào edit, entity vào caetegoryForm
		model.addAttribute("edit", true);
		model.addAttribute("categoryForm", entity);
		// set category image vào nameImage, category id vào id
		session.set("nameImage", category.getImage());
		session.set("id", category.getId());
		return "manager/categoryForm";
	}

	// mapping categoryForm.jsp, save image
	@RequestMapping("/admin/categoryForm/form/edit/{id}")
	public String edit(Model model, @PathVariable("id") int id, @ModelAttribute("categoryForm") Categories entity,
			BindingResult result) {
		model.addAttribute("edit", true);
		// dùng binding result để check result
		if (entity.getName().isEmpty()) {
			result.rejectValue("name", "NotBlank.categoryForm.name");
		} else {
			// Lấy category id gán cho category, get name entity set vào category
			Category category = dao.getById(id);
			category.setName(entity.getName());
			if (!entity.getImage().isEmpty()) {				
				category.setImage(param.save(entity.getImage()));			
			}
			dao.save(category);
			model.addAttribute("edit", false);
			session.set("nameImage", "");
			return "redirect:/admin/categoryForm/list";
		}
		
		return "manager/categoryForm";
	}
	
}
