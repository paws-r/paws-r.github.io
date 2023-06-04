<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the name of an application

### Description

Changes the name of an application.

### Usage

    codedeploy_update_application(applicationName, newApplicationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_update_application_:_applicationName">applicationName</code></td>
<td><p>The current name of the application you want to change.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_application_:_newApplicationName">newApplicationName</code></td>
<td><p>The new name to give the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_application(
      applicationName = "string",
      newApplicationName = "string"
    )
