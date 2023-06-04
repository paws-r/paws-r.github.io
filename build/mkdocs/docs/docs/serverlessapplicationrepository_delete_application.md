<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified application

### Description

Deletes the specified application.

### Usage

    serverlessapplicationrepository_delete_application(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_delete_application_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      ApplicationId = "string"
    )
