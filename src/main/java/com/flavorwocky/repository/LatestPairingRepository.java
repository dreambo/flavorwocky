package com.flavorwocky.repository;

import com.flavorwocky.domain.LatestPairing;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LatestPairingRepository extends GraphRepository<LatestPairing> {

}
