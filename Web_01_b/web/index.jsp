<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>HTML Forms</title>
    </head>
    <body>
        <h1>HTML Forms</h1>
        <form>
            Textbox
            <input type="text" class="form-control">
<br/>
            
            Password
            <input type="password"><br/>
            
            Hidden
            <input type="hidden" value="123"><br/>
            
            Male
            <input type="checkbox" checked><br/>
            
            Status
            <input type="radio" name="status"> Single<br/>
            <input type="radio" name="status"> Married<br/>
            <input type="radio" name="status"> Divorsed<br/>
            
            ComboBox
            <select>
                <option>JSP and Servlet</option>
                <option>EJB</option>
                <option>Core Java</option>
            </select><br/>
            
            Multiple
            <select multiple size="3">
                <option>JSP and Servlet</option>
                <option>EJB</option>
                <option>Core Java</option>
            </select><br/>
            
            TextArea 
            <textarea rows="4" cols="20">
            This is a form parameters demo!!!
            </textarea><br/>
            
            <input type="submit" value="Submit Query">
            <input type="button" value="Register">
            <input type="reset" value="Reset">
            <button>JavaScript</button>
        </form>    
    </body>
</html>
