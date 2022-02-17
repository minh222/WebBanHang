package com.poly.main.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.poly.main.Dao.AddressDao;
import com.poly.main.Entity.Address;
import com.poly.main.Entity.User;
import com.poly.main.Model.AddressModel;
import com.poly.main.Service.SessionService;
import com.poly.main.Validator.AddressValidator;

@Controller
public class AddressProfileController {
	@Autowired
	AddressValidator addressValidator;
	
	@Autowired
	AddressDao dao;
	
	@Autowired
	SessionService sessionService;
	
	// binder dataa trong address model
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		Object target = binder.getTarget();
		//Object target2 = binder2.getTarget();
		if (target == null) {
			return;
		}
		if (target.getClass() == AddressModel.class) {
			binder.setValidator(addressValidator);
		}
	}
	
	// get thông tin của address set vào entity -> addAttribute entity vào address
	@GetMapping("/shop/profile/address")
	public String index(Model model) {
		User user = sessionService.get("userLogin");
		Address address = dao.getAddress(user.getId());
		AddressModel entity = new AddressModel();
		if (address != null) {
			entity.setFirstname(address.getFirstname());
			entity.setLastname(address.getLastname());
			entity.setAddress(address.getAddress());
			entity.setEmail(address.getEmail());
			entity.setPhone(address.getPhone());
			entity.setProvincial(address.getProvincial());
		}
		
		model.addAttribute("address", entity);
		return "user/address";
	}
	
	// mapping đến address.jsp
	@PostMapping("/shop/profile/update/address")
	public String save(Model model, @ModelAttribute("address") @Validated AddressModel entity, BindingResult result) {
		if (result.hasErrors()) {
			return "user/address";
		} else {
			// dùng session service để lấy thông tin user
			User user = sessionService.get("userLogin");
			// get address bằng id thông qua hàm dao.getAddress
			Address address = dao.getAddress(user.getId());
			//nếu id rỗng thì tạo address mới và dùng hàm dao.save để save address 
			if (address == null) {
				address = new Address(entity.getFirstname(), entity.getLastname(), entity.getEmail(),
						entity.getPhone(), entity.getProvincial(), entity.getAddress(), user);
				dao.save(address);
			} else { //Nếu id tồn tại thì get thông tin của entity set vào address -> dùng hàm dao.save để save address
				address.setAddress(entity.getAddress());
				address.setEmail(entity.getEmail());
				address.setFirstname(entity.getFirstname());
				address.setLastname(entity.getLastname());
				address.setPhone(entity.getPhone());
				address.setProvincial(entity.getProvincial());
				dao.save(address);
			}
			return "redirect:/shop/profile/address";
		}	
	}
}
