package com.poly.main.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.poly.main.Dao.OrderDao;
import com.poly.main.Entity.Order;
import com.poly.main.Model.OrderModel;
import com.poly.main.Service.SessionService;

@Controller
public class AdminOrderWController {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	OrderDao orderDao;
	
	//mapping đến orderWTable.jsp
	@RequestMapping("/admin/order/wait")
	public String index(Model model, @RequestParam("keyword11") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
		//User user = sessionService.get("userLogin");
		// Tính năng tìm kiếm sản phẩm
		// set keyword11 vào find name bằng sessionservice
		String findName;
		if(sessionService.get("keyword11") == null) {
			findName = name.orElse("");
		}
		else {
			findName = name.orElse(sessionService.get("keyword11"));
		}		
		
		// set findname vào keyword11 bằng sessionservice
		sessionService.set("keyword11", findName);
		
		// phân trang mỗi trang 5 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		
		// Gọi hàm odedao.fillTableWOder để tìm kiếm sản phẩm khi phân trang để tạo list sản phẩm sau khi tìm kiếm
		Page<OrderModel> list = orderDao.fillTableWOrder("%" + findName + "%", pageable);
		
		// add list vào ooderWait
		model.addAttribute("orderWait", list);
		return "manager/orderWTable";
	}
	
	// mapping vào orderDetail.jsp
	@GetMapping("/admin/orderDetail/{name}")
	public String detail(Model model, @PathVariable("name") String name) {
		// Tạo list bằng hàm orderDao.getOrderByName(name), addAttribute list vào orderDetail
		List<Order> list = orderDao.getOrderByName(name);
		model.addAttribute("orderDetail", list);
		model.addAttribute("location", 0); //addAttribute 0 vào location
		return "manager/orderDetail";
	}
	
	// mapping vào wait.jsp
	@GetMapping("/admin/order/wait/send/{name}")
	public String send(Model model, @PathVariable("name") String name) {
		// Tạo list bằng hàm getOrderByName(tên), duyệt list để chuyển tất cả trạng thái của list thành true
		List<Order> list = orderDao.getOrderByName(name);
		for(Order o: list) {
			o.setStatus(true);
			orderDao.save(o);
		}
		return "redirect:/admin/order/wait";
	}
	
	// mapping vào orderSTable
	@RequestMapping("/admin/order/send")
	public String sending(Model model, @RequestParam("keyword12") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
		//User user = sessionService.get("userLogin");
		// dùng sessionService để get keyword12 và gán vào findname
		String findName;
		if(sessionService.get("keyword12") == null) {
			findName = name.orElse("");
		}
		else {
			findName = name.orElse(sessionService.get("keyword12"));
		}		
		// Dùng sessionService để set findname vào keyword12
		sessionService.set("keyword12", findName);
		
		// Phân trang tạo 1 đối tượng pageable
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		
		// dùng hàm fillTableWorder2(findname,pageable) để tìm các sản phẩm sau khi đã phân trang và đưa vào list
		Page<OrderModel> list = orderDao.fillTableWOrder2("%" + findName + "%", pageable);
		// addAttribute list vào orderSend
		model.addAttribute("orderSend", list);
		return "manager/orderSTable";
	}
}
