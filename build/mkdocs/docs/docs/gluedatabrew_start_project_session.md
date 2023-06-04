<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_start_project_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an interactive session, enabling you to manipulate data in a DataBrew project

### Description

Creates an interactive session, enabling you to manipulate data in a
DataBrew project.

### Usage

    gluedatabrew_start_project_session(Name, AssumeControl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_start_project_session_:_Name">Name</code></td>
<td><p>[required] The name of the project to act upon.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_start_project_session_:_AssumeControl">AssumeControl</code></td>
<td><p>A value that, if true, enables you to take control of a session,
even if a different client is currently accessing the project.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      ClientSessionId = "string"
    )

### Request syntax

    svc$start_project_session(
      Name = "string",
      AssumeControl = TRUE|FALSE
    )
