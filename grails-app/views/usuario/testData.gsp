<html>
    <head>

    <title>Simple GSP page</title>
    <g:javascript library="jquery" />
    <g:javascript library="jquery-ui"/>

    <r:layoutResources/>   

    <script type="text/javascript">

       $(document).ready(function() { 
           $("#datepicker").datepicker({dateFormat: 'yy/mm/dd'}); }) 
    </script>


     </head>
        <body>
            <div>
                <p> Between carajo <input type="text" id="datepicker"> </p>        
            </div>
          <r:layoutResources/>
        </body>
    </html>