<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header-admin.jsp" %>

<!---------------------------------- header ----------------------------------->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Members</h1>
    <p class="mb-4">ํ์ ์กฐํ<a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Members</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div class="alert" style="padding-left:50px; padding-right:50px">
                    <br>
                    <form id="memberDetail" action="memberDetail.do" method="post">

                        <div class="form-floating">
                            <label for="name">Name</label>
                            <input class="form-control" name="name" id="name" type="text" value="${memberList.name}" placeholder="name" data-sb-validations="required" readonly />
                            <div class="invalid-feedback" data-sb-feedback="name:required">An email is required.</div>
                            <div class="invalid-feedback" data-sb-feedback="name">Email is not valid.</div>
                        </div>
                        <div class="form-floating">
                            <label for="id">Id</label>
                            <input class="form-control" name="id" id="id" type="text" value="${memberList.id}" placeholder="id gogo" data-sb-validations="required" readonly />
                            <div class="invalid-feedback" data-sb-feedback="phone:required">id</div>
                        </div>
                        <div class="form-floating">
                            <label for="pwd">Pwd</label>
                            <input class="form-control" name="pwd" id="pwd" type="text" value="${memberList.pwd}" placeholder="price gogo" data-sb-validations="required" readonly/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">pwd</div>
                        </div>
                        <div class="form-floating">
                            <label for="rank">Rank</label>
                            <input class="form-control" name="rank" id="rank" type="text" value="${memberList.rank}" placeholder="rank gogo" data-sb-validations="required" readonly/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">rank</div>
                        </div>
                        <div class="form-floating">
                            <label for="tel">Tel</label>
                            <input class="form-control" name="tel" id="tel" type="text" value="${memberList.tel}" placeholder="tel gogo" data-sb-validations="required" readonly/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">tel</div>
                        </div>
                        <div class="form-floating">
                            <label for="email">Email</label>
                            <input class="form-control" name="email" id="email" type="text" value="${memberList.email}" placeholder="email gogo" data-sb-validations="required" readonly/>
                            <div class="invalid-feedback" data-sb-feedback="phone:required">email</div>
                        </div>

                        <br />
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->

                        <button class="btn btn-primary text-uppercase" type="button" onclick="location.href='memberUpdateForm.do?no=${memberList.no}';">์์?</button>
                        <button class="btn btn-primary text-uppercase" type="button" onclick="location.href='memberDelete.do?no=${memberList.no}';">์ญ์?</button>
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