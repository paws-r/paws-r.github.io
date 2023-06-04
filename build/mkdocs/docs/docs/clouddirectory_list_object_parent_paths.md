<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_object_parent_paths</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects

### Description

Retrieves all available parent paths for any object type such as node,
leaf node, policy node, and index node objects. For more information
about objects, see [Directory
Structure](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).

Use this API to evaluate all parents for an object. The call returns all
objects from the root of the directory up to the requested object. The
API returns the number of paths based on user-defined `MaxResults`, in
case there are multiple paths to the parent. The order of the paths and
nodes returned is consistent among multiple API calls unless the objects
are deleted or moved. Paths not leading to the directory root are
ignored from the target object.

### Usage

    clouddirectory_list_object_parent_paths(DirectoryArn, ObjectReference,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_object_parent_paths_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory to which the parent path
applies.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_parent_paths_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object whose parent
paths are listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_parent_paths_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_parent_paths_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PathToObjectIdentifiersList = list(
        list(
          Path = "string",
          ObjectIdentifiers = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_object_parent_paths(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
