package com.charu.roorest;

import com.charu.roorest.domain.Role;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Role.class)
@Controller
@RequestMapping("/roles")
public class RoleController {
}
