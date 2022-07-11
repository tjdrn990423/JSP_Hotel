package com.example.demo.repository;
import com.example.demo.Pagination;
import com.example.demo.model.ReservationDTO;
import com.example.demo.model.RestaurantsDTO;

import java.util.List;
import java.util.Map;

public interface ReservationDAO {
    int insertReservation(ReservationDTO reservationDTO);
    List<ReservationDTO> reservationList();
    ReservationDTO readReservationList(int no);
    List<ReservationDTO> readReservationListAsMemberNo(String member_no);
    int update(ReservationDTO reservationDTO);
    int delete(ReservationDTO reservationDTO);
    int readTotalRows();
    List<ReservationDTO> readListPagination(Pagination pagination);
    List<Map<String, Object>> readchartList();
}
