/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.8
 * Generated at: 2020-09-08 00:13:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.error;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class enter_005ferror_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/views/error/../include/corejs.jsp", Long.valueOf(1599095872595L));
    _jspx_dependants.put("/WEB-INF/views/error/../include/head.jsp", Long.valueOf(1599012036070L));
    _jspx_dependants.put("/WEB-INF/lib/standard-1.1.2.jar", Long.valueOf(1598927620350L));
    _jspx_dependants.put("jar:file:/D:/Git_repositories/lms_system/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/LMS_PROJECT/WEB-INF/lib/standard-1.1.2.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <title>사이트 이름</title>\r\n");
      out.write(" <!-- Required meta tags -->\r\n");
      out.write(" <meta charset=\"utf-8\">\r\n");
      out.write(" <meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\" name=\"viewport\" />\r\n");
      out.write(" <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\r\n");
      out.write(" <!--     Fonts and icons     -->\r\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons\" />\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css\">\r\n");
      out.write(" <!-- Material Kit CSS -->\r\n");
      out.write(" <link href=\"/resources/assets/css/material-dashboard.css?v=2.1.0\" rel=\"stylesheet\" />\r\n");
      out.write(" <!-- include libraries(jQuery) -->\r\n");
      out.write(" <script src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"dark-edition\">\r\n");
      out.write(" <div class=\"wrapper\">\r\n");
      out.write("  <div>\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("    \t<br><br><br>\r\n");
      out.write("    \t<div class=\"row align-self-center d-flex  justify-content-md-center\">\r\n");
      out.write("            <div class=\"col-md-6\">\r\n");
      out.write("              <div class=\"card\">\r\n");
      out.write("                <div class=\"card-header card-header-primary\">\r\n");
      out.write("                  <h4 class=\"card-title\">접속 오류 !! </h4>\r\n");
      out.write("                  <p class=\"card-category\">Enter error (관리자에게 문의 하세요.)</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card-body table-responsive\">\r\n");
      out.write("                   <p>접근 권한이 없는 페이지에 접속요청을 하셨습니다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"container-fluid d-flex justify-content-end\">\r\n");
      out.write("                \t<div class=\"row col-md-2\">\r\n");
      out.write("                   <a href=\"/home\"><p class=\"text-primary\">홈으로 이동 <p></a>\r\n");
      out.write("                \t</div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("       </div>\r\n");
      out.write("     </div>\r\n");
      out.write(" </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--   Core JS Files   -->\r\n");
      out.write("\r\n");
      out.write("  <script src=\"/resources/assets/js/core/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/js/core/bootstrap-material-design.min.js\"></script>\r\n");
      out.write("  <script src=\"https://unpkg.com/default-passive-events\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js\"></script>\r\n");
      out.write("  <!-- Place this tag in your head or just before your close body tag. -->\r\n");
      out.write("  <script async defer src=\"https://buttons.github.io/buttons.js\"></script>\r\n");
      out.write("  <!--  Google Maps Plugin    -->\r\n");
      out.write("  <script src=\"https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE\"></script>\r\n");
      out.write("  <!-- Chartist JS -->\r\n");
      out.write("  <script src=\"/resources/assets/js/plugins/chartist.min.js\"></script>\r\n");
      out.write("  <!--  Notifications Plugin    -->\r\n");
      out.write("  <script src=\"/resources/assets/js/plugins/bootstrap-notify.js\"></script>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("  <!-- 썸머노트와는 충돌 됨 ... -->\r\n");
      out.write("  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc   -->\r\n");
      out.write("  <script src=\"/resources/assets/js/material-dashboard.js?v=2.1.0\"></script> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- Material Dashboard DEMO methods, don't include it in your project! -->\r\n");
      out.write("  <script src=\"/resources/assets/demo/demo.js\"></script>\r\n");
      out.write("  <script>\r\n");
      out.write("    $(document).ready(function() {\r\n");
      out.write("      $().ready(function() {\r\n");
      out.write("        $sidebar = $('.sidebar');\r\n");
      out.write("\r\n");
      out.write("        $sidebar_img_container = $sidebar.find('.sidebar-background');\r\n");
      out.write("\r\n");
      out.write("        $full_page = $('.full-page');\r\n");
      out.write("\r\n");
      out.write("        $sidebar_responsive = $('body > .navbar-collapse');\r\n");
      out.write("\r\n");
      out.write("        window_width = $(window).width();\r\n");
      out.write("\r\n");
      out.write("        $('.fixed-plugin a').click(function(event) {\r\n");
      out.write("          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active\r\n");
      out.write("          if ($(this).hasClass('switch-trigger')) {\r\n");
      out.write("            if (event.stopPropagation) {\r\n");
      out.write("              event.stopPropagation();\r\n");
      out.write("            } else if (window.event) {\r\n");
      out.write("              window.event.cancelBubble = true;\r\n");
      out.write("            }\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $('.fixed-plugin .active-color span').click(function() {\r\n");
      out.write("          $full_page_background = $('.full-page-background');\r\n");
      out.write("\r\n");
      out.write("          $(this).siblings().removeClass('active');\r\n");
      out.write("          $(this).addClass('active');\r\n");
      out.write("\r\n");
      out.write("          var new_color = $(this).data('color');\r\n");
      out.write("\r\n");
      out.write("          if ($sidebar.length != 0) {\r\n");
      out.write("            $sidebar.attr('data-color', new_color);\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          if ($full_page.length != 0) {\r\n");
      out.write("            $full_page.attr('filter-color', new_color);\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          if ($sidebar_responsive.length != 0) {\r\n");
      out.write("            $sidebar_responsive.attr('data-color', new_color);\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $('.fixed-plugin .background-color .badge').click(function() {\r\n");
      out.write("          $(this).siblings().removeClass('active');\r\n");
      out.write("          $(this).addClass('active');\r\n");
      out.write("\r\n");
      out.write("          var new_color = $(this).data('background-color');\r\n");
      out.write("\r\n");
      out.write("          if ($sidebar.length != 0) {\r\n");
      out.write("            $sidebar.attr('data-background-color', new_color);\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $('.fixed-plugin .img-holder').click(function() {\r\n");
      out.write("          $full_page_background = $('.full-page-background');\r\n");
      out.write("\r\n");
      out.write("          $(this).parent('li').siblings().removeClass('active');\r\n");
      out.write("          $(this).parent('li').addClass('active');\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          var new_image = $(this).find(\"img\").attr('src');\r\n");
      out.write("\r\n");
      out.write("          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {\r\n");
      out.write("            $sidebar_img_container.fadeOut('fast', function() {\r\n");
      out.write("              $sidebar_img_container.css('background-image', 'url(\"' + new_image + '\")');\r\n");
      out.write("              $sidebar_img_container.fadeIn('fast');\r\n");
      out.write("            });\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {\r\n");
      out.write("            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');\r\n");
      out.write("\r\n");
      out.write("            $full_page_background.fadeOut('fast', function() {\r\n");
      out.write("              $full_page_background.css('background-image', 'url(\"' + new_image_full_page + '\")');\r\n");
      out.write("              $full_page_background.fadeIn('fast');\r\n");
      out.write("            });\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          if ($('.switch-sidebar-image input:checked').length == 0) {\r\n");
      out.write("            var new_image = $('.fixed-plugin li.active .img-holder').find(\"img\").attr('src');\r\n");
      out.write("            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');\r\n");
      out.write("\r\n");
      out.write("            $sidebar_img_container.css('background-image', 'url(\"' + new_image + '\")');\r\n");
      out.write("            $full_page_background.css('background-image', 'url(\"' + new_image_full_page + '\")');\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          if ($sidebar_responsive.length != 0) {\r\n");
      out.write("            $sidebar_responsive.css('background-image', 'url(\"' + new_image + '\")');\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $('.switch-sidebar-image input').change(function() {\r\n");
      out.write("          $full_page_background = $('.full-page-background');\r\n");
      out.write("\r\n");
      out.write("          $input = $(this);\r\n");
      out.write("\r\n");
      out.write("          if ($input.is(':checked')) {\r\n");
      out.write("            if ($sidebar_img_container.length != 0) {\r\n");
      out.write("              $sidebar_img_container.fadeIn('fast');\r\n");
      out.write("              $sidebar.attr('data-image', '#');\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            if ($full_page_background.length != 0) {\r\n");
      out.write("              $full_page_background.fadeIn('fast');\r\n");
      out.write("              $full_page.attr('data-image', '#');\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            background_image = true;\r\n");
      out.write("          } else {\r\n");
      out.write("            if ($sidebar_img_container.length != 0) {\r\n");
      out.write("              $sidebar.removeAttr('data-image');\r\n");
      out.write("              $sidebar_img_container.fadeOut('fast');\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            if ($full_page_background.length != 0) {\r\n");
      out.write("              $full_page.removeAttr('data-image', '#');\r\n");
      out.write("              $full_page_background.fadeOut('fast');\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            background_image = false;\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $('.switch-sidebar-mini input').change(function() {\r\n");
      out.write("          $body = $('body');\r\n");
      out.write("\r\n");
      out.write("          $input = $(this);\r\n");
      out.write("\r\n");
      out.write("          if (md.misc.sidebar_mini_active == true) {\r\n");
      out.write("            $('body').removeClass('sidebar-mini');\r\n");
      out.write("            md.misc.sidebar_mini_active = false;\r\n");
      out.write("\r\n");
      out.write("            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();\r\n");
      out.write("\r\n");
      out.write("          } else {\r\n");
      out.write("\r\n");
      out.write("            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');\r\n");
      out.write("\r\n");
      out.write("            setTimeout(function() {\r\n");
      out.write("              $('body').addClass('sidebar-mini');\r\n");
      out.write("\r\n");
      out.write("              md.misc.sidebar_mini_active = true;\r\n");
      out.write("            }, 300);\r\n");
      out.write("          }\r\n");
      out.write("\r\n");
      out.write("          // we simulate the window Resize so the charts will get updated in realtime.\r\n");
      out.write("          var simulateWindowResize = setInterval(function() {\r\n");
      out.write("            window.dispatchEvent(new Event('resize'));\r\n");
      out.write("          }, 180);\r\n");
      out.write("\r\n");
      out.write("          // we stop the simulation of Window Resize after the animations are completed\r\n");
      out.write("          setTimeout(function() {\r\n");
      out.write("            clearInterval(simulateWindowResize);\r\n");
      out.write("          }, 1000);\r\n");
      out.write("\r\n");
      out.write("        });\r\n");
      out.write("      });\r\n");
      out.write("    });\r\n");
      out.write("  </script>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
