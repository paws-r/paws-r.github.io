<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a group which you can use to associate canaries with each other, including cross-Region canaries

### Description

Creates a group which you can use to associate canaries with each other,
including cross-Region canaries. Using groups can help you with managing
and automating your canaries, and you can also view aggregated run
results and statistics for all canaries in a group.

Groups are global resources. When you create a group, it is replicated
across Amazon Web Services Regions, and you can view it and add canaries
to it from any Region. Although the group ARN format reflects the Region
name where it was created, a group is not constrained to any Region.
This means that you can put canaries from multiple Regions into the same
group, and then use that group to view and manage all of those canaries
in a single view.

Groups are supported in all Regions except the Regions that are disabled
by default. For more information about these Regions, see [Enabling a
Region](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable).

Each group can contain as many as 10 canaries. You can have as many as
20 groups in your account. Any single canary can be a member of up to 10
groups.

### Usage

    synthetics_create_group(Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_create_group_:_Name">Name</code></td>
<td><p>[required] The name for the group. It can include any Unicode
characters.</p>
<p>The names for all groups in your account, across all Regions, must be
unique.</p></td>
</tr>
<tr class="even">
<td><code id="synthetics_create_group_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the group. You can
associate as many as 50 tags with a group.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions, by granting a user permission
to access or change only the resources that have certain tag
values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        Id = "string",
        Name = "string",
        Arn = "string",
        Tags = list(
          "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_group(
      Name = "string",
      Tags = list(
        "string"
      )
    )
