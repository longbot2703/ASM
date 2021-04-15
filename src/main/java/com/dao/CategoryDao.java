package com.dao;

import com.model.CategoryEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
    EntityManager em = emf.createEntityManager();
    public void insertCategory(CategoryEntity cate){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(cate);
        em.getTransaction().commit();
        em.close();
    }
    public List<CategoryEntity> listCate(){
        List<CategoryEntity> list = new ArrayList<>();
        try{
            em = emf.createEntityManager();
            em.getTransaction().begin();
            list = em.createQuery("select p from CategoryEntity p order by p.id ASC ", CategoryEntity.class).setMaxResults(6).getResultList();
            em.getTransaction().commit();
            em.close();
        }catch (Exception e){
            System.out.println(e.toString());
        }
        return list;
    }

    public List<CategoryEntity> listCategory(){
        List<CategoryEntity> list = new ArrayList<>();
        try{
            em = emf.createEntityManager();
            em.getTransaction().begin();
            list = em.createQuery("select p from CategoryEntity p order by p.id ASC ", CategoryEntity.class).getResultList();
            em.getTransaction().commit();
            em.close();
        }catch (Exception e){
            System.out.println(e.toString());
        }
        return list;
    }
}
