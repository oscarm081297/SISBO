package SISBO;

import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import logic.SboTbCatArticulo;
import logic.Model;
import logic.SboTbFamilia;

@Path("catArticulos")
public class catArticulos {

    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<SboTbCatArticulo> getCatArticulos(@QueryParam("nombre") String nombre) throws ClassNotFoundException, SQLException {

        List<SboTbCatArticulo> lista = Model.instance().listaCatArticulos();
        return lista;

    }

    @GET
    @Path("{filtro}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public SboTbCatArticulo get(@PathParam("filtro") String filtro) {
        try {
            SboTbCatArticulo ob = Model.instance().getCatArticulo(filtro);
            return ob;
        } catch (Exception ex) {
            throw new NotFoundException();
        }
    }

}
