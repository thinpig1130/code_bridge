<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/m_sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/m_topbar.jsp" %>
      <div class="content">
        <div class="container-fluid">
           <!-- your content here -->
           학습내용
          문제등록탭



          <div class=" col-md-12">
            <div class="card">
              <div class="card-header card-header-tabs card-header-primary">
                <div class="nav-tabs-navigation">
                  <div class="nav-tabs-wrapper">
                    <span class="nav-tabs-title"> 관련문제등록 </span>
                    <ul class="nav nav-tabs" data-tabs="tabs">
                      <li class="nav-item col-md-5">
                        <a class="nav-link active" href="#m_question" data-toggle="tab">
                          <i class="material-icons">bug_report</i> 객관식
                          <div class="ripple-container"></div>
                        </a>
                      </li>
                      <li class="nav-item col-md-5">
                        <a class="nav-link" href="#s_question" data-toggle="tab">
                          <i class="material-icons">code</i> 주관식
                          <div class="ripple-container"></div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="tab-content">
                  <div class="tab-pane active" id="m_question">
                    <form action="admin/어쩌구저쩌구2" method="POST">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <div class="form-group">
                              <label class="bmd-label-floating">문제를 입력합니다.</label>
                              <textarea class="form-control" rows="5"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="choice" value="0">
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-9">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input type="text" class="form-control">
                              </div>
                            </div>
                          </div>
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="choice" value="0">
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-9">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input type="text" class="form-control">
                              </div>
                            </div>
                            <div>
                              <button type="button" rel="tooltip" title="Add" class="btn btn-white btn-link btn-sm">
                                <i class="material-icons">add</i>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary pull-right">등록</button>
                      <div class="clearfix"></div>
                    </form>
                  </div>
                  <div class="tab-pane" id="s_question">
                    <form action="admin/어쩌구저쩌구" method="POST">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <div class="form-group">
                              <label class="bmd-label-floating">문제를 입력합니다.</label>
                              <textarea class="form-control" rows="5"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label class="bmd-label-floating">답변입력</label>
                            <input type="text" class="form-control">
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary pull-right">등록</button>
                      <div class="clearfix"></div>
                    </form>
                  </div>
                  <div class="tab-pane" id="settings">
                    <table class="table">
                      <tbody>
                        <tr>
                          <td>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="">
                                <span class="form-check-sign">
                                  <span class="check"></span>
                                </span>
                              </label>
                            </div>
                          </td>
                          <td>Lines From Great Russian Literature? Or E-mails From My Boss?</td>
                          <td class="td-actions text-right">
                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">edit</i>
                            </button>
                            <button type="button" rel="tooltip" title="Remove" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">close</i>
                            </button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" checked>
                                <span class="form-check-sign">
                                  <span class="check"></span>
                                </span>
                              </label>
                            </div>
                          </td>
                          <td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                          </td>
                          <td class="td-actions text-right">
                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">edit</i>
                            </button>
                            <button type="button" rel="tooltip" title="Remove" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">close</i>
                            </button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" checked>
                                <span class="form-check-sign">
                                  <span class="check"></span>
                                </span>
                              </label>
                            </div>
                          </td>
                          <td>Sign contract for "What are conference organizers afraid of?"</td>
                          <td class="td-actions text-right">
                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">edit</i>
                            </button>
                            <button type="button" rel="tooltip" title="Remove" class="btn btn-white btn-link btn-sm">
                              <i class="material-icons">close</i>
                            </button>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
		</div>
      </div>
      <%@ include file="../include/m_footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
