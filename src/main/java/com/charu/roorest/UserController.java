package com.charu.roorest;

import com.charu.roorest.domain.User;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = User.class)
@Controller
@RequestMapping("/users")
public class UserController {
}
