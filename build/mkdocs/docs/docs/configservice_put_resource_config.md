<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_resource_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Records the configuration state for the resource provided in the request

### Description

Records the configuration state for the resource provided in the
request. The configuration state of a resource is represented in Config
as Configuration Items. Once this API records the configuration item,
you can retrieve the list of configuration items for the custom resource
type using existing Config APIs.

The custom resource type must be registered with CloudFormation. This
API accepts the configuration item registered with CloudFormation.

When you call this API, Config only stores configuration state of the
resource provided in the request. This API does not change or remediate
the configuration of the resource.

Write-only schema properites are not recorded as part of the published
configuration item.

### Usage

    configservice_put_resource_config(ResourceType, SchemaVersionId,
      ResourceId, ResourceName, Configuration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_resource_config_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the resource. The custom resource type
must be registered with CloudFormation.</p>
<p>You cannot use the organization names “amzn”, “amazon”, “alexa”,
“custom” with custom resource types. It is the first part of the
ResourceType up to the first ::.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_resource_config_:_SchemaVersionId">SchemaVersionId</code></td>
<td><p>[required] Version of the schema registered for the ResourceType
in CloudFormation.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_resource_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] Unique identifier of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_resource_config_:_ResourceName">ResourceName</code></td>
<td><p>Name of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_resource_config_:_Configuration">Configuration</code></td>
<td><p>[required] The configuration object of the resource in valid JSON
format. It must match the schema registered with CloudFormation.</p>
<p>The configuration JSON must not exceed 64 KB.</p></td>
</tr>
<tr class="even">
<td><code id="configservice_put_resource_config_:_Tags">Tags</code></td>
<td><p>Tags associated with the resource.</p>
<p>This field is not to be confused with the Amazon Web Services-wide
tag feature for Amazon Web Services resources. Tags for
<code>put_resource_config</code> are tags that you supply for the
configuration items of your custom resources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_resource_config(
      ResourceType = "string",
      SchemaVersionId = "string",
      ResourceId = "string",
      ResourceName = "string",
      Configuration = "string",
      Tags = list(
        "string"
      )
    )
