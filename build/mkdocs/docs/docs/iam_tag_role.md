<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_tag_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to an IAM role

### Description

Adds one or more tags to an IAM role. The role can be a regular role or
a service-linked role. If a tag with the same key name already exists,
then that tag is overwritten with the new value.

A tag consists of a key name and an associated value. By assigning tags
to your resources, you can do the following:

-   **Administrative grouping and discovery** - Attach tags to resources
    to aid in organization and search. For example, you could search for
    all resources with the key name *Project* and the value
    *MyImportantProject*. Or search for all resources with the key name
    *Cost Center* and the value *41200*.

-   **Access control** - Include tags in IAM user-based and
    resource-based policies. You can use tags to restrict access to only
    an IAM role that has a specified tag attached. You can also restrict
    access to only those resources that have a certain tag attached. For
    examples of policies that show how to use tags to control access,
    see [Control access using IAM
    tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)
    in the *IAM User Guide*.

-   **Cost allocation** - Use tags to help track which individuals and
    teams are using which Amazon Web Services resources.

-   If any one of the tags is invalid or if you exceed the allowed
    maximum number of tags, then the entire request fails and the
    resource is not created. For more information about tagging, see
    [Tagging IAM
    resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
    in the *IAM User Guide*.

-   Amazon Web Services always interprets the tag `Value` as a single
    string. If you need to store an array, you can store comma-separated
    values in the string. However, you must interpret the value in your
    code.

For more information about tagging, see [Tagging IAM
identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
in the *IAM User Guide*.

### Usage

    iam_tag_role(RoleName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_tag_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the IAM role to which you want to add
tags.</p>
<p>This parameter accepts (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that consist of upper and lowercase alphanumeric
characters with no spaces. You can also include any of the following
characters: _+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_tag_role_:_Tags">Tags</code></td>
<td><p>[required] The list of tags that you want to attach to the IAM
role. Each tag consists of a key name and an associated value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_role(
      RoleName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to add tags to an existing role.
    svc$tag_role(
      RoleName = "taggedrole",
      Tags = list(
        list(
          Key = "Dept",
          Value = "Accounting"
        ),
        list(
          Key = "CostCenter",
          Value = "12345"
        )
      )
    )

    ## End(Not run)
