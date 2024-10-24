<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE jsp>
<jsp>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Bootstrap Admin Theme</title>
        <link rel="icon" href="../img/favicon.ico">

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="/admin/pages/headerDoc.jsp" />

                <jsp:include page="/admin/pages/headerNgang.jsp" />

            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Forms</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Basic Form Elements
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form role="form">
                                                <div class="form-group">
                                                    <label>Text Input</label>
                                                    <input class="form-control">
                                                    <p class="help-block">Example block-level help text here.</p>
                                                </div>
                                                <div class="form-group">
                                                    <label>Text Input with Placeholder</label>
                                                    <input class="form-control" placeholder="Enter text">
                                                </div>
                                                <div class="form-group">
                                                    <label>Static Control</label>
                                                    <p class="form-control-static">email@example.com</p>
                                                </div>
                                                <div class="form-group">
                                                    <label>File input</label>
                                                    <input type="file">
                                                </div>
                                                <div class="form-group">
                                                    <label>Text area</label>
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Checkboxes</label>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" value="">Checkbox 1
                                                        </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" value="">Checkbox 2
                                                        </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" value="">Checkbox 3
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Inline Checkboxes</label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">1
                                                    </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">2
                                                    </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">3
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label>Radio Buttons</label>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Radio 1
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio 2
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio 3
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Inline Radio Buttons</label>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>1
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">2
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">3
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label>Selects</label>
                                                    <select class="form-control">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Multiple Selects</label>
                                                    <select multiple class="form-control">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </div>
                                                <button type="submit" class="btn btn-default">Submit Button</button>
                                                <button type="reset" class="btn btn-default">Reset Button</button>
                                            </form>
                                        </div>
                                        <!-- /.col-lg-6 (nested) -->
                                        <div class="col-lg-6">
                                            <h1>Disabled Form States</h1>
                                            <form role="form">
                                                <fieldset disabled>
                                                    <div class="form-group">
                                                        <label for="disabledSelect">Disabled input</label>
                                                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="disabledSelect">Disabled select menu</label>
                                                        <select id="disabledSelect" class="form-control">
                                                            <option>Disabled select</option>
                                                        </select>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox">Disabled Checkbox
                                                        </label>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Disabled Button</button>
                                                </fieldset>
                                            </form>
                                            <h1>Form Validation States</h1>
                                            <form role="form">
                                                <div class="form-group has-success">
                                                    <label class="control-label" for="inputSuccess">Input with success</label>
                                                    <input type="text" class="form-control" id="inputSuccess">
                                                </div>
                                                <div class="form-group has-warning">
                                                    <label class="control-label" for="inputWarning">Input with warning</label>
                                                    <input type="text" class="form-control" id="inputWarning">
                                                </div>
                                                <div class="form-group has-error">
                                                    <label class="control-label" for="inputError">Input with error</label>
                                                    <input type="text" class="form-control" id="inputError">
                                                </div>
                                            </form>
                                            <h1>Input Groups</h1>
                                            <form role="form">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" placeholder="Username">
                                                </div>
                                                <div class="form-group input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon"><i class="fa fa-eur"></i>
                                                    </span>
                                                    <input type="text" class="form-control" placeholder="Font Awesome Icon">
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">$</span>
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                                <div class="form-group input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                        </button>
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-lg-6 (nested) -->
                                    </div>
                                    <!-- /.row (nested) -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/script-app.js"></script>

    </body>
</jsp>
