<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header-admin.jsp" %>

<!---------------------------------- header ----------------------------------->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Member</h1>
    <p class="mb-4">회원 조회<a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Member</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div class="alert" style="padding-left:50px; padding-right:50px">
                    <br>
                    <form id="reservationUpdate" action="reservationUpdate.do" method="get">
                        <input type="hidden" class="form-control" name="no" id="no" type="text" value="${reservationList.no}" placeholder="name" data-sb-validations="required"  />
                        <div class="form-floating">
                            <label for="member_no">Member_no</label>
                            <input class="form-control" name="member_no" id="member_no" type="text" value="${reservationList.member_no}" placeholder="member_no" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="name:required">An email is required.</div>
                            <div class="invalid-feedback" data-sb-feedback="name">Email is not valid.</div>
                        </div>
                        <div class="form-floating">
                            <label for="room_no">Room_no</label>
                            <input class="form-control" name="room_no" id="room_no" type="text" value="${reservationList.room_no}" placeholder="room_no gogo" data-sb-validations="required"  />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">room_no</div>
                        </div>
                        <div class="form-floating">
                            <label for="startday">StartDay</label>
                            <input class="form-control" name="startday" id="startday" type="text" value="${reservationList.startday}" placeholder="startday gogo" data-sb-validations="required"/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">startday</div>
                        </div>
                        <div class="form-floating">
                            <label for="endday">EndDay</label>
                            <input class="form-control" name="endday" id="endday" type="text" value="${reservationList.endday}" placeholder="endday gogo" data-sb-validations="required"/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">endday</div>
                        </div>
                        <div class="form-floating">
                            <label for="price">Price</label>
                            <input class="form-control" name="price" id="price" type="text" value="${reservationList.price}" placeholder="price gogo" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">price</div>
                        </div>
                        <div class="form-floating">
                            <label for="card_no">Card_no</label>
                            <input class="form-control" name="card_no" id="card_no" type="text" value="${reservationList.card_no}" placeholder="card_no gogo" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">card_no</div>
                        </div>
                        <div class="form-floating">
                            <label for="member_num">Member_Num</label>
                            <input class="form-control" name="member_num" id="member_num" type="text" value="${reservationList.member_num}" placeholder="card_no gogo" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">member_num</div>
                        </div>
                        <div class="form-floating">
                            <label for="name">Name</label>
                            <input class="form-control" name="name" id="name" type="text" value="${reservationList.name}" placeholder="name gogo" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">name</div>
                        </div>
                        <div class="form-floating">
                            <label for="tel">Tel</label>
                            <input class="form-control" name="tel" id="tel" type="text" value="${reservationList.tel}" placeholder="tel gogo" data-sb-validations="required" />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">tel</div>
                        </div>
                        <br />
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->
                        <div class="d-none" id="submitSuccessMessage">
                            <div class="text-center mb-3">
                                <div class="fw-bolder">Form submission successful!</div>
                                To activate this form, sign up at
                                <br />
                                <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                            </div>
                        </div>
                        <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                        <button class="btn btn-primary text-uppercase" id="submitButton" type="submit">수정확인</button>

                    </form>
                </div><table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            </table>
            </div>

        </div>
    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@ include file="footer-admin.jsp" %>
</html>