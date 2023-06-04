<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_ops_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If you create a new application in Application Manager, Amazon Web Services Systems Manager calls this API operation to specify information about the new application, including the application type

### Description

If you create a new application in Application Manager, Amazon Web
Services Systems Manager calls this API operation to specify information
about the new application, including the application type.

### Usage

    ssm_create_ops_metadata(ResourceId, Metadata, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_create_ops_metadata_:_ResourceId">ResourceId</code></td>
<td><p>[required] A resource ID for a new Application Manager
application.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_ops_metadata_:_Metadata">Metadata</code></td>
<td><p>Metadata for a new Application Manager application.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_ops_metadata_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. You can specify
a maximum of five tags for an OpsMetadata object. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag an OpsMetadata object to
identify an environment or target Amazon Web Services Region. In this
case, you could specify the following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=Environment,Value=Production⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=Region,Value=us-east-2⁠</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpsMetadataArn = "string"
    )

### Request syntax

    svc$create_ops_metadata(
      ResourceId = "string",
      Metadata = list(
        list(
          Value = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
