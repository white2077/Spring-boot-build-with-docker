package com.white.docker.controller;

import com.white.docker.model.Person;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/person-information")
public class Controller {
        @RequestMapping("/get")
        public ResponseEntity<?> getPersonInformation() {
            return ResponseEntity.ok(new Person("John Doe", 30, "123 Main St"));
        }

}
