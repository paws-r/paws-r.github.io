<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_application_instance_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an application instance's configuration manifest

### Description

Returns information about an application instance's configuration
manifest.

### Usage

    panorama_describe_application_instance_details(ApplicationInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_application_instance_details_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] The application instance's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInstanceId = "string",
      ApplicationInstanceIdToReplace = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      DefaultRuntimeContextDevice = "string",
      Description = "string",
      ManifestOverridesPayload = list(
        PayloadData = "string"
      ),
      ManifestPayload = list(
        PayloadData = "string"
      ),
      Name = "string"
    )

### Request syntax

    svc$describe_application_instance_details(
      ApplicationInstanceId = "string"
    )
