package com.example.buysell.repositories;

import com.example.buysell.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
