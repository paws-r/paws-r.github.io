<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for Config resource

### Description

List the tags for Config resource.

### Usage

    configservice_list_tags_for_resource(ResourceArn, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource for which to list the tags. Currently, the supported resources
are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and
<code>AggregatorAuthorization</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_list_tags_for_resource_:_Limit">Limit</code></td>
<td><p>The maximum number of tags returned on each page. The limit
maximum is 50. You cannot specify a number greater than 50. If you
specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string",
      Limit = 123,
      NextToken = "string"
    )
