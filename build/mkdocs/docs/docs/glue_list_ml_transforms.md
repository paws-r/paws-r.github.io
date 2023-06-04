<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_ml_transforms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a sortable, filterable list of existing Glue machine learning transforms in this Amazon Web Services account, or the resources with the specified tag

### Description

Retrieves a sortable, filterable list of existing Glue machine learning
transforms in this Amazon Web Services account, or the resources with
the specified tag. This operation takes the optional `Tags` field, which
you can use as a filter of the responses so that tagged resources can be
retrieved as a group. If you choose to use tag filtering, only resources
with the tags are retrieved.

### Usage

    glue_list_ml_transforms(NextToken, MaxResults, Filter, Sort, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_ml_transforms_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_ml_transforms_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_ml_transforms_:_Filter">Filter</code></td>
<td><p>A <code>TransformFilterCriteria</code> used to filter the machine
learning transforms.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_ml_transforms_:_Sort">Sort</code></td>
<td><p>A <code>TransformSortCriteria</code> used to sort the machine
learning transforms.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_ml_transforms_:_Tags">Tags</code></td>
<td><p>Specifies to return only these tagged resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_ml_transforms(
      NextToken = "string",
      MaxResults = 123,
      Filter = list(
        Name = "string",
        TransformType = "FIND_MATCHES",
        Status = "NOT_READY"|"READY"|"DELETING",
        GlueVersion = "string",
        CreatedBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreatedAfter = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedBefore = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedAfter = as.POSIXct(
          "2015-01-01"
        ),
        Schema = list(
          list(
            Name = "string",
            DataType = "string"
          )
        )
      ),
      Sort = list(
        Column = "NAME"|"TRANSFORM_TYPE"|"STATUS"|"CREATED"|"LAST_MODIFIED",
        SortDirection = "DESCENDING"|"ASCENDING"
      ),
      Tags = list(
        "string"
      )
    )
