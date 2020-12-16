package org.example.repo;

import org.example.model.Skills;
import org.springframework.data.repository.CrudRepository;

public interface SkillsRepo extends CrudRepository<Skills, Long> {
}
