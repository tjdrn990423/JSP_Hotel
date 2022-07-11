<%@ include file="header-admin.jsp" %>
<!---------------------------------- header ----------------------------------->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Restaurants</h1>
    <p class="mb-4">식당 조회<a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="restaurantsAdd.do" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class=""></i> 추가</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>식당명</th>
                        <th>설명</th>
                        <th>가격</th>

                    </tr>
                    </thead>

<c:forEach items="${requestScope.restaurantsList}" var="restaurant">
                    <tbody>
                    <tr>
                        <td>${restaurant.no}</td>
                            <td><a href="adRestaurantsDetail.do?no=${restaurant.no}">${restaurant.name}</a></td>
                        <td>${restaurant.ex}</td>
                        <td>${restaurant.price}</td>

                    </tr>

                    </tbody>
</c:forEach>
                </table>
                <!-- Pager-->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">

                        <c:if test="${pagination.beginPageNo > pagination.perPagination }" >
                            <li class="page-item">
                                <a class="page-link" href="restaurantsList.do?pn=${pagination.beginPageNo - 1}" tabindex="-1" aria-disabled="true">Prev</a>
                            </li>
                        </c:if>

                        <c:forEach var="pageNo" begin="${pagination.beginPageNo}" end="${pagination.endPageNo}">
                            <c:choose>
                                <c:when test="${pageNo == pagination.curPageNo}">
                                    <li class="page-item active"><a class="page-link" href="restaurantsList.do?pn=${pageNo}">${pageNo}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link" href="restaurantsList.do?pn=${pageNo}">${pageNo}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <c:if test="${pagination.endPageNo < pagination.totalPages }" >
                            <li class="page-item">
                                <a class="page-link" href="restaurantsList.do?pn=${pagination.endPageNo + 1}" tabindex="-1" aria-disabled="true">Next</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@ include file="footer-admin.jsp" %>
</html>