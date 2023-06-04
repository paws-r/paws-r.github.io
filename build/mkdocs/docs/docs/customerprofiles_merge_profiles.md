<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_merge_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs an AWS Lambda job that does the following:

### Description

Runs an AWS Lambda job that does the following:

1.  All the profileKeys in the `ProfileToBeMerged` will be moved to the
    main profile.

2.  All the objects in the `ProfileToBeMerged` will be moved to the main
    profile.

3.  All the `ProfileToBeMerged` will be deleted at the end.

4.  All the profileKeys in the `ProfileIdsToBeMerged` will be moved to
    the main profile.

5.  Standard fields are merged as follows:

    1.  Fields are always "union"-ed if there are no conflicts in
        standard fields or attributeKeys.

    2.  When there are conflicting fields:

        1.  If no `SourceProfileIds` entry is specified, the main
            Profile value is always taken.

        2.  If a `SourceProfileIds` entry is specified, the specified
            profileId is always taken, even if it is a NULL value.

You can use MergeProfiles together with `get_matches`, which returns
potentially matching profiles, or use it with the results of another
matching system. After profiles have been merged, they cannot be
separated (unmerged).

### Usage

    customerprofiles_merge_profiles(DomainName, MainProfileId,
      ProfileIdsToBeMerged, FieldSourceProfileIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_merge_profiles_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_merge_profiles_:_MainProfileId">MainProfileId</code></td>
<td><p>[required] The identifier of the profile to be taken.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_merge_profiles_:_ProfileIdsToBeMerged">ProfileIdsToBeMerged</code></td>
<td><p>[required] The identifier of the profile to be merged into
MainProfileId.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_merge_profiles_:_FieldSourceProfileIds">FieldSourceProfileIds</code></td>
<td><p>The identifiers of the fields in the profile that has the
information you want to apply to the merge. For example, say you want to
merge EmailAddress from Profile1 into MainProfile. This would be the
identifier of the EmailAddress field in Profile1.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$merge_profiles(
      DomainName = "string",
      MainProfileId = "string",
      ProfileIdsToBeMerged = list(
        "string"
      ),
      FieldSourceProfileIds = list(
        AccountNumber = "string",
        AdditionalInformation = "string",
        PartyType = "string",
        BusinessName = "string",
        FirstName = "string",
        MiddleName = "string",
        LastName = "string",
        BirthDate = "string",
        Gender = "string",
        PhoneNumber = "string",
        MobilePhoneNumber = "string",
        HomePhoneNumber = "string",
        BusinessPhoneNumber = "string",
        EmailAddress = "string",
        PersonalEmailAddress = "string",
        BusinessEmailAddress = "string",
        Address = "string",
        ShippingAddress = "string",
        MailingAddress = "string",
        BillingAddress = "string",
        Attributes = list(
          "string"
        )
      )
    )
