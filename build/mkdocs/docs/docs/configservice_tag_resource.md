<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified tags to a resource with the specified resourceArn

### Description

Associates the specified tags to a resource with the specified
resourceArn. If existing tags on a resource are not specified in the
request parameters, they are not changed. If existing tags are
specified, however, then their values will be updated. When a resource
is deleted, the tags associated with that resource are deleted as well.

### Usage

    configservice_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource for which to list the tags. Currently, the supported resources
are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and
<code>AggregatorAuthorization</code>.</p></td>
</tr>
<tr class="even">
<td><code id="configservice_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] An array of tag object.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
