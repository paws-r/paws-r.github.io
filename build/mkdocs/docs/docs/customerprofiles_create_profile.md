<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_create_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a standard profile

### Description

Creates a standard profile.

A standard profile represents the following attributes for a customer
profile in a domain.

### Usage

    customerprofiles_create_profile(DomainName, AccountNumber,
      AdditionalInformation, PartyType, BusinessName, FirstName, MiddleName,
      LastName, BirthDate, Gender, PhoneNumber, MobilePhoneNumber,
      HomePhoneNumber, BusinessPhoneNumber, EmailAddress,
      PersonalEmailAddress, BusinessEmailAddress, Address, ShippingAddress,
      MailingAddress, BillingAddress, Attributes, PartyTypeString,
      GenderString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_AccountNumber">AccountNumber</code></td>
<td><p>A unique account number that you have given to the
customer.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_AdditionalInformation">AdditionalInformation</code></td>
<td><p>Any additional information relevant to the customer’s
profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_PartyType">PartyType</code></td>
<td><p>The type of profile used to describe the customer.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_BusinessName">BusinessName</code></td>
<td><p>The name of the customer’s business.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_FirstName">FirstName</code></td>
<td><p>The customer’s first name.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_MiddleName">MiddleName</code></td>
<td><p>The customer’s middle name.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_LastName">LastName</code></td>
<td><p>The customer’s last name.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_BirthDate">BirthDate</code></td>
<td><p>The customer’s birth date.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_Gender">Gender</code></td>
<td><p>The gender with which the customer identifies.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_PhoneNumber">PhoneNumber</code></td>
<td><p>The customer’s phone number, which has not been specified as a
mobile, home, or business number.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_MobilePhoneNumber">MobilePhoneNumber</code></td>
<td><p>The customer’s mobile phone number.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_HomePhoneNumber">HomePhoneNumber</code></td>
<td><p>The customer’s home phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_BusinessPhoneNumber">BusinessPhoneNumber</code></td>
<td><p>The customer’s business phone number.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_EmailAddress">EmailAddress</code></td>
<td><p>The customer’s email address, which has not been specified as a
personal or business address.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_PersonalEmailAddress">PersonalEmailAddress</code></td>
<td><p>The customer’s personal email address.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_BusinessEmailAddress">BusinessEmailAddress</code></td>
<td><p>The customer’s business email address.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_Address">Address</code></td>
<td><p>A generic address associated with the customer that is not
mailing, shipping, or billing.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_ShippingAddress">ShippingAddress</code></td>
<td><p>The customer’s shipping address.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_MailingAddress">MailingAddress</code></td>
<td><p>The customer’s mailing address.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_BillingAddress">BillingAddress</code></td>
<td><p>The customer’s billing address.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_Attributes">Attributes</code></td>
<td><p>A key value pair of attributes of a customer profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_create_profile_:_PartyTypeString">PartyTypeString</code></td>
<td><p>An alternative to <code>PartyType</code> which accepts any string
as input.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_create_profile_:_GenderString">GenderString</code></td>
<td><p>An alternative to <code>Gender</code> which accepts any string as
input.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProfileId = "string"
    )

### Request syntax

    svc$create_profile(
      DomainName = "string",
      AccountNumber = "string",
      AdditionalInformation = "string",
      PartyType = "INDIVIDUAL"|"BUSINESS"|"OTHER",
      BusinessName = "string",
      FirstName = "string",
      MiddleName = "string",
      LastName = "string",
      BirthDate = "string",
      Gender = "MALE"|"FEMALE"|"UNSPECIFIED",
      PhoneNumber = "string",
      MobilePhoneNumber = "string",
      HomePhoneNumber = "string",
      BusinessPhoneNumber = "string",
      EmailAddress = "string",
      PersonalEmailAddress = "string",
      BusinessEmailAddress = "string",
      Address = list(
        Address1 = "string",
        Address2 = "string",
        Address3 = "string",
        Address4 = "string",
        City = "string",
        County = "string",
        State = "string",
        Province = "string",
        Country = "string",
        PostalCode = "string"
      ),
      ShippingAddress = list(
        Address1 = "string",
        Address2 = "string",
        Address3 = "string",
        Address4 = "string",
        City = "string",
        County = "string",
        State = "string",
        Province = "string",
        Country = "string",
        PostalCode = "string"
      ),
      MailingAddress = list(
        Address1 = "string",
        Address2 = "string",
        Address3 = "string",
        Address4 = "string",
        City = "string",
        County = "string",
        State = "string",
        Province = "string",
        Country = "string",
        PostalCode = "string"
      ),
      BillingAddress = list(
        Address1 = "string",
        Address2 = "string",
        Address3 = "string",
        Address4 = "string",
        City = "string",
        County = "string",
        State = "string",
        Province = "string",
        Country = "string",
        PostalCode = "string"
      ),
      Attributes = list(
        "string"
      ),
      PartyTypeString = "string",
      GenderString = "string"
    )
