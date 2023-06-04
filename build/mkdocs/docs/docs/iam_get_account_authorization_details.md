<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_account_authorization_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services account, including their relationships to one another

### Description

Retrieves information about all IAM users, groups, roles, and policies
in your Amazon Web Services account, including their relationships to
one another. Use this operation to obtain a snapshot of the
configuration of IAM permissions (users, groups, roles, and policies) in
your account.

Policies returned by this operation are URL-encoded compliant with [RFC
3986](https://datatracker.ietf.org/doc/html/rfc3986). You can use a URL
decoding method to convert the policy back to plain JSON text. For
example, if you use Java, you can use the `decode` method of the
`java.net.URLDecoder` utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

You can optionally filter the results using the `Filter` parameter. You
can paginate the results using the `MaxItems` and `Marker` parameters.

### Usage

    iam_get_account_authorization_details(Filter, MaxItems, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_account_authorization_details_:_Filter">Filter</code></td>
<td><p>A list of entity types used to filter the results. Only the
entities that match the types you specify are included in the output.
Use the value <code>LocalManagedPolicy</code> to include customer
managed policies.</p>
<p>The format for this parameter is a comma-separated (if more than one)
list of strings. Each string value in the list must be one of the valid
values listed below.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_get_account_authorization_details_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_get_account_authorization_details_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserDetailList = list(
        list(
          Path = "string",
          UserName = "string",
          UserId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          UserPolicyList = list(
            list(
              PolicyName = "string",
              PolicyDocument = "string"
            )
          ),
          GroupList = list(
            "string"
          ),
          AttachedManagedPolicies = list(
            list(
              PolicyName = "string",
              PolicyArn = "string"
            )
          ),
          PermissionsBoundary = list(
            PermissionsBoundaryType = "PermissionsBoundaryPolicy",
            PermissionsBoundaryArn = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      GroupDetailList = list(
        list(
          Path = "string",
          GroupName = "string",
          GroupId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          GroupPolicyList = list(
            list(
              PolicyName = "string",
              PolicyDocument = "string"
            )
          ),
          AttachedManagedPolicies = list(
            list(
              PolicyName = "string",
              PolicyArn = "string"
            )
          )
        )
      ),
      RoleDetailList = list(
        list(
          Path = "string",
          RoleName = "string",
          RoleId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          AssumeRolePolicyDocument = "string",
          InstanceProfileList = list(
            list(
              Path = "string",
              InstanceProfileName = "string",
              InstanceProfileId = "string",
              Arn = "string",
              CreateDate = as.POSIXct(
                "2015-01-01"
              ),
              Roles = list(
                list(
                  Path = "string",
                  RoleName = "string",
                  RoleId = "string",
                  Arn = "string",
                  CreateDate = as.POSIXct(
                    "2015-01-01"
                  ),
                  AssumeRolePolicyDocument = "string",
                  Description = "string",
                  MaxSessionDuration = 123,
                  PermissionsBoundary = list(
                    PermissionsBoundaryType = "PermissionsBoundaryPolicy",
                    PermissionsBoundaryArn = "string"
                  ),
                  Tags = list(
                    list(
                      Key = "string",
                      Value = "string"
                    )
                  ),
                  RoleLastUsed = list(
                    LastUsedDate = as.POSIXct(
                      "2015-01-01"
                    ),
                    Region = "string"
                  )
                )
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            )
          ),
          RolePolicyList = list(
            list(
              PolicyName = "string",
              PolicyDocument = "string"
            )
          ),
          AttachedManagedPolicies = list(
            list(
              PolicyName = "string",
              PolicyArn = "string"
            )
          ),
          PermissionsBoundary = list(
            PermissionsBoundaryType = "PermissionsBoundaryPolicy",
            PermissionsBoundaryArn = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          RoleLastUsed = list(
            LastUsedDate = as.POSIXct(
              "2015-01-01"
            ),
            Region = "string"
          )
        )
      ),
      Policies = list(
        list(
          PolicyName = "string",
          PolicyId = "string",
          Arn = "string",
          Path = "string",
          DefaultVersionId = "string",
          AttachmentCount = 123,
          PermissionsBoundaryUsageCount = 123,
          IsAttachable = TRUE|FALSE,
          Description = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          PolicyVersionList = list(
            list(
              Document = "string",
              VersionId = "string",
              IsDefaultVersion = TRUE|FALSE,
              CreateDate = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$get_account_authorization_details(
      Filter = list(
        "User"|"Role"|"Group"|"LocalManagedPolicy"|"AWSManagedPolicy"
      ),
      MaxItems = 123,
      Marker = "string"
    )
