import com.springbootdev.domain.entity.organization;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrganizationRepository extends JpaRepository<organization, Long>
{

}