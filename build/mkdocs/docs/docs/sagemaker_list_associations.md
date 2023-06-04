<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the associations in your account and their properties

### Description

Lists the associations in your account and their properties.

### Usage

    sagemaker_list_associations(SourceArn, DestinationArn, SourceType,
      DestinationType, AssociationType, CreatedAfter, CreatedBefore, SortBy,
      SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_SourceArn">SourceArn</code></td>
<td><p>A filter that returns only associations with the specified source
ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_associations_:_DestinationArn">DestinationArn</code></td>
<td><p>A filter that returns only associations with the specified
destination Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_SourceType">SourceType</code></td>
<td><p>A filter that returns only associations with the specified source
type.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_associations_:_DestinationType">DestinationType</code></td>
<td><p>A filter that returns only associations with the specified
destination type.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_AssociationType">AssociationType</code></td>
<td><p>A filter that returns only associations of the specified
type.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_associations_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only associations created on or after the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only associations created on or before the
specified time.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_associations_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_associations_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_associations</code> didn't
return the full set of associations, the call returns a token for
getting the next set of associations.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of associations to return in the response. The
default value is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationSummaries = list(
        list(
          SourceArn = "string",
          DestinationArn = "string",
          SourceType = "string",
          DestinationType = "string",
          AssociationType = "ContributedTo"|"AssociatedWith"|"DerivedFrom"|"Produced",
          SourceName = "string",
          DestinationName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = list(
            UserProfileArn = "string",
            UserProfileName = "string",
            DomainId = "string",
            IamIdentity = list(
              Arn = "string",
              PrincipalId = "string",
              SourceIdentity = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associations(
      SourceArn = "string",
      DestinationArn = "string",
      SourceType = "string",
      DestinationType = "string",
      AssociationType = "ContributedTo"|"AssociatedWith"|"DerivedFrom"|"Produced",
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "SourceArn"|"DestinationArn"|"SourceType"|"DestinationType"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
