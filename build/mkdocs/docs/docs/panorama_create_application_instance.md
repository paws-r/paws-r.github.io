<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_create_application_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application instance and deploys it to a device

### Description

Creates an application instance and deploys it to a device.

### Usage

    panorama_create_application_instance(ApplicationInstanceIdToReplace,
      DefaultRuntimeContextDevice, Description, ManifestOverridesPayload,
      ManifestPayload, Name, RuntimeRoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_create_application_instance_:_ApplicationInstanceIdToReplace">ApplicationInstanceIdToReplace</code></td>
<td><p>The ID of an application instance to replace with the new
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_application_instance_:_DefaultRuntimeContextDevice">DefaultRuntimeContextDevice</code></td>
<td><p>[required] A device's ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_application_instance_:_Description">Description</code></td>
<td><p>A description for the application instance.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_application_instance_:_ManifestOverridesPayload">ManifestOverridesPayload</code></td>
<td><p>Setting overrides for the application manifest.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_application_instance_:_ManifestPayload">ManifestPayload</code></td>
<td><p>[required] The application's manifest document.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_application_instance_:_Name">Name</code></td>
<td><p>A name for the application instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_create_application_instance_:_RuntimeRoleArn">RuntimeRoleArn</code></td>
<td><p>The ARN of a runtime role for the application instance.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_create_application_instance_:_Tags">Tags</code></td>
<td><p>Tags for the application instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInstanceId = "string"
    )

### Request syntax

    svc$create_application_instance(
      ApplicationInstanceIdToReplace = "string",
      DefaultRuntimeContextDevice = "string",
      Description = "string",
      ManifestOverridesPayload = list(
        PayloadData = "string"
      ),
      ManifestPayload = list(
        PayloadData = "string"
      ),
      Name = "string",
      RuntimeRoleArn = "string",
      Tags = list(
        "string"
      )
    )
