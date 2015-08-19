/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Control.exceptions.NonexistentEntityException;
import Usuarios.UsuarioH;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Luis
 */
public class UsuarioHJpaController implements Serializable {
    private EntityManagerFactory emf = null;
    
    public UsuarioHJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(UsuarioH usuarioH) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(usuarioH);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(UsuarioH usuarioH) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            usuarioH = em.merge(usuarioH);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = usuarioH.getId();
                if (findUsuarioH(id) == null) {
                    throw new NonexistentEntityException("The usuarioH with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            UsuarioH usuarioH;
            try {
                usuarioH = em.getReference(UsuarioH.class, id);
                usuarioH.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The usuarioH with id " + id + " no longer exists.", enfe);
            }
            em.remove(usuarioH);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<UsuarioH> findUsuarioHEntities() {
        return findUsuarioHEntities(true, -1, -1);
    }

    public List<UsuarioH> findUsuarioHEntities(int maxResults, int firstResult) {
        return findUsuarioHEntities(false, maxResults, firstResult);
    }

    private List<UsuarioH> findUsuarioHEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(UsuarioH.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public UsuarioH findUsuarioH(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(UsuarioH.class, id);
        } finally {
            em.close();
        }
    }

    public int getUsuarioHCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<UsuarioH> rt = cq.from(UsuarioH.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
