import com.springbootdev.domain.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrganizationRepository extends JpaRepository<User, Long>
{

}