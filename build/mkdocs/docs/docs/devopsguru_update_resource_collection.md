<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_update_resource_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the collection of resources that DevOps Guru analyzes

### Description

Updates the collection of resources that DevOps Guru analyzes. The two
types of Amazon Web Services resource collections supported are Amazon
Web Services CloudFormation stacks and Amazon Web Services resources
that contain the same Amazon Web Services tag. DevOps Guru can be
configured to analyze the Amazon Web Services resources that are defined
in the stacks or that are tagged using the same tag *key*. You can
specify up to 500 Amazon Web Services CloudFormation stacks. This method
also creates the IAM role required for you to use DevOps Guru.

### Usage

    devopsguru_update_resource_collection(Action, ResourceCollection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_update_resource_collection_:_Action">Action</code></td>
<td><p>[required] Specifies if the resource collection in the request is
added or deleted to the resource collection.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_update_resource_collection_:_ResourceCollection">ResourceCollection</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource_collection(
      Action = "ADD"|"REMOVE",
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
      )
    )
