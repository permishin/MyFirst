package org.example.repo;

import org.example.model.User;
import org.springframework.data.repository.CrudRepository;

public interface MyFirstRepo extends CrudRepository<User, Long> {

}
