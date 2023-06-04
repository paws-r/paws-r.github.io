<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an application

### Description

Deletes an application. An application has to be in a stopped or created
state in order to be deleted.

### Usage

    emrserverless_delete_application(applicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_delete_application_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application that will be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      applicationId = "string"
    )
