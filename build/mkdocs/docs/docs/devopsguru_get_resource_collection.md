<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_get_resource_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns lists Amazon Web Services resources that are of the specified resource collection type

### Description

Returns lists Amazon Web Services resources that are of the specified
resource collection type. The two types of Amazon Web Services resource
collections supported are Amazon Web Services CloudFormation stacks and
Amazon Web Services resources that contain the same Amazon Web Services
tag. DevOps Guru can be configured to analyze the Amazon Web Services
resources that are defined in the stacks or that are tagged using the
same tag *key*. You can specify up to 500 Amazon Web Services
CloudFormation stacks.

### Usage

    devopsguru_get_resource_collection(ResourceCollectionType, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_get_resource_collection_:_ResourceCollectionType">ResourceCollectionType</code></td>
<td><p>[required] The type of Amazon Web Services resource collections
to return. The one valid value is <code>CLOUD_FORMATION</code> for
Amazon Web Services CloudFormation stacks.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_get_resource_collection_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceCollection = list(
        CloudFormation = list(
          StackNames = list(
            "string"
          )
        ),
        Tags = list(
          list(
            AppBoundaryKey = "string",
            TagValues = list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_resource_collection(
      ResourceCollectionType = "AWS_CLOUD_FORMATION"|"AWS_SERVICE"|"AWS_TAGS",
      NextToken = "string"
    )
