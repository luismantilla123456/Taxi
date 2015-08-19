package Modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-08-19T06:21:17")
@StaticMetamodel(Reservacion.class)
public class Reservacion_ { 

    public static volatile SingularAttribute<Reservacion, Date> fecha;
    public static volatile SingularAttribute<Reservacion, Integer> id;
    public static volatile SingularAttribute<Reservacion, String> nombre;
    public static volatile SingularAttribute<Reservacion, Integer> dni;
    public static volatile SingularAttribute<Reservacion, String> detalle;

}