<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Enterprise edition only) Creates a new namespace for you to use with Amazon QuickSight

### Description

(Enterprise edition only) Creates a new namespace for you to use with
Amazon QuickSight.

A namespace allows you to isolate the Amazon QuickSight users and groups
that are registered for that namespace. Users that access the namespace
can share assets only with other users or groups in the same namespace.
They can't see users and groups in other namespaces. You can create a
namespace after your Amazon Web Services account is subscribed to Amazon
QuickSight. The namespace must be unique within the Amazon Web Services
account. By default, there is a limit of 100 namespaces per Amazon Web
Services account. To increase your limit, create a ticket with Amazon
Web Services Support.

### Usage

    quicksight_create_namespace(AwsAccountId, Namespace, IdentityStore,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_namespace_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to create the Amazon QuickSight namespace in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_namespace_:_Namespace">Namespace</code></td>
<td><p>[required] The name that you want to use to describe the new
namespace.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_namespace_:_IdentityStore">IdentityStore</code></td>
<td><p>[required] Specifies the type of your user identity directory.
Currently, this supports users with an identity type of
<code>QUICKSIGHT</code>.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_namespace_:_Tags">Tags</code></td>
<td><p>The tags that you want to associate with the namespace that
you're creating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      CapacityRegion = "string",
      CreationStatus = "CREATED"|"CREATING"|"DELETING"|"RETRYABLE_FAILURE"|"NON_RETRYABLE_FAILURE",
      IdentityStore = "QUICKSIGHT",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_namespace(
      AwsAccountId = "string",
      Namespace = "string",
      IdentityStore = "QUICKSIGHT",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
