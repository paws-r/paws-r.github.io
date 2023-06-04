<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_context</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a context

### Description

Describes a context.

### Usage

    sagemaker_describe_context(ContextName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_context_:_ContextName">ContextName</code></td>
<td><p>[required] The name of the context to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextName = "string",
      ContextArn = "string",
      Source = list(
        SourceUri = "string",
        SourceType = "string",
        SourceId = "string"
      ),
      ContextType = "string",
      Description = "string",
      Properties = list(
        "string"
      ),
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
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      LineageGroupArn = "string"
    )

### Request syntax

    svc$describe_context(
      ContextName = "string"
    )
