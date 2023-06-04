<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an application

### Description

Deletes an application.

### Usage

    codedeploy_delete_application(applicationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_delete_application_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      applicationName = "string"
    )
