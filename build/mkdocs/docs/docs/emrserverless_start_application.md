<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_start_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a specified application and initializes initial capacity if configured

### Description

Starts a specified application and initializes initial capacity if
configured.

### Usage

    emrserverless_start_application(applicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_start_application_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application to start.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_application(
      applicationId = "string"
    )
