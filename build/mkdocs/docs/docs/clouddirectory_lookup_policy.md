<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_lookup_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all policies from the root of the Directory to the object specified

### Description

Lists all policies from the root of the Directory to the object
specified. If there are no policies present, an empty list is returned.
If policies are present, and if some objects don't have the policies
attached, it returns the `ObjectIdentifier` for such objects. If
policies are present, it returns `ObjectIdentifier`, `policyId`, and
`policyType`. Paths that don't lead to the root from the target object
are ignored. For more information, see
[Policies](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).

### Usage

    clouddirectory_lookup_policy(DirectoryArn, ObjectReference, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_lookup_policy_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_lookup_policy_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] Reference that identifies the object whose policies
will be looked up.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_lookup_policy_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_lookup_policy_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyToPathList = list(
        list(
          Path = "string",
          Policies = list(
            list(
              PolicyId = "string",
              ObjectIdentifier = "string",
              PolicyType = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$lookup_policy(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
