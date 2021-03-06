package com.app.university.study_material;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MaterialTypeRepositary extends JpaRepository<MaterialType, Integer> {

	MaterialType findByMaterialType(String materialType);

}
