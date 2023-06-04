<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_stop_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a specified application and releases initial capacity if configured

### Description

Stops a specified application and releases initial capacity if
configured. All scheduled and running jobs must be completed or
cancelled before stopping an application.

### Usage

    emrserverless_stop_application(applicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_stop_application_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_application(
      applicationId = "string"
    )
