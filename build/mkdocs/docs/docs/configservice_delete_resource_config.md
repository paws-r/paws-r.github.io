<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_resource_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Records the configuration state for a custom resource that has been deleted

### Description

Records the configuration state for a custom resource that has been
deleted. This API records a new ConfigurationItem with a ResourceDeleted
status. You can retrieve the ConfigurationItems recorded for this
resource in your Config History.

### Usage

    configservice_delete_resource_config(ResourceType, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_resource_config_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_delete_resource_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] Unique identifier of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_config(
      ResourceType = "string",
      ResourceId = "string"
    )
