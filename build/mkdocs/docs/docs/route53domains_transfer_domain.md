<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_transfer_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transfers a domain from another registrar to Amazon Route 53

### Description

Transfers a domain from another registrar to Amazon Route 53. When the
transfer is complete, the domain is registered either with Amazon
Registrar (for .com, .net, and .org domains) or with our registrar
associate, Gandi (for all other TLDs).

For more information about transferring domains, see the following
topics:

-   For transfer requirements, a detailed procedure, and information
    about viewing the status of a domain that you're transferring to
    Route 53, see [Transferring Registration for a Domain to Amazon
    Route
    53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
    in the *Amazon Route 53 Developer Guide*.

-   For information about how to transfer a domain from one Amazon Web
    Services account to another, see
    `transfer_domain_to_another_aws_account`.

-   For information about how to transfer a domain to another domain
    registrar, see [Transferring a Domain from Amazon Route 53 to
    Another
    Registrar](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html)
    in the *Amazon Route 53 Developer Guide*.

If the registrar for your domain is also the DNS service provider for
the domain, we highly recommend that you transfer your DNS service to
Route 53 or to another DNS service provider before you transfer your
registration. Some registrars provide free DNS service when you purchase
a domain registration. When you transfer the registration, the previous
registrar will not renew your domain registration and could end your DNS
service at any time.

If the registrar for your domain is also the DNS service provider for
the domain and you don't transfer DNS service to another provider, your
website, email, and the web applications associated with the domain
might become unavailable.

If the transfer is successful, this method returns an operation ID that
you can use to track the progress and completion of the action. If the
transfer doesn't complete successfully, the domain registrant will be
notified by email.

### Usage

    route53domains_transfer_domain(DomainName, IdnLangCode, DurationInYears,
      Nameservers, AuthCode, AutoRenew, AdminContact, RegistrantContact,
      TechContact, PrivacyProtectAdminContact,
      PrivacyProtectRegistrantContact, PrivacyProtectTechContact)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to transfer to
Route 53. The top-level domain (TLD), such as .com, must be a TLD that
Route 53 supports. For a list of supported TLDs, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a> in the <em>Amazon Route
53 Developer Guide</em>.</p>
<p>The domain name can contain only the following characters:</p>
<ul>
<li><p>Letters a through z. Domain names are not case
sensitive.</p></li>
<li><p>Numbers 0 through 9.</p></li>
<li><p>Hyphen (-). You can't specify a hyphen at the beginning or end of
a label.</p></li>
<li><p>Period (.) to separate the labels in the name, such as the
<code>.</code> in <code>example.com</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_IdnLangCode">IdnLangCode</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_DurationInYears">DurationInYears</code></td>
<td><p>[required] The number of years that you want to register the
domain for. Domains are registered for a minimum of one year. The
maximum period depends on the top-level domain.</p>
<p>Default: 1</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_Nameservers">Nameservers</code></td>
<td><p>Contains details for the host and glue IP addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_AuthCode">AuthCode</code></td>
<td><p>The authorization code for the domain. You get this value from
the current registrar.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_AutoRenew">AutoRenew</code></td>
<td><p>Indicates whether the domain will be automatically renewed (true)
or not (false). Auto renewal only takes effect after the account is
charged.</p>
<p>Default: true</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_AdminContact">AdminContact</code></td>
<td><p>[required] Provides detailed contact information.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_RegistrantContact">RegistrantContact</code></td>
<td><p>[required] Provides detailed contact information.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_TechContact">TechContact</code></td>
<td><p>[required] Provides detailed contact information.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_PrivacyProtectAdminContact">PrivacyProtectAdminContact</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the admin contact.</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_:_PrivacyProtectRegistrantContact">PrivacyProtectRegistrantContact</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the registrant contact (domain
owner).</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_:_PrivacyProtectTechContact">PrivacyProtectTechContact</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the technical contact.</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p>
<p>Default: <code>true</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$transfer_domain(
      DomainName = "string",
      IdnLangCode = "string",
      DurationInYears = 123,
      Nameservers = list(
        list(
          Name = "string",
          GlueIps = list(
            "string"
          )
        )
      ),
      AuthCode = "string",
      AutoRenew = TRUE|FALSE,
      AdminContact = list(
        FirstName = "string",
        LastName = "string",
        ContactType = "PERSON"|"COMPANY"|"ASSOCIATION"|"PUBLIC_BODY"|"RESELLER",
        OrganizationName = "string",
        AddressLine1 = "string",
        AddressLine2 = "string",
        City = "string",
        State = "string",
        CountryCode = "AC"|"AD"|"AE"|"AF"|"AG"|"AI"|"AL"|"AM"|"AN"|"AO"|"AQ"|"AR"|"AS"|"AT"|"AU"|"AW"|"AX"|"AZ"|"BA"|"BB"|"BD"|"BE"|"BF"|"BG"|"BH"|"BI"|"BJ"|"BL"|"BM"|"BN"|"BO"|"BQ"|"BR"|"BS"|"BT"|"BV"|"BW"|"BY"|"BZ"|"CA"|"CC"|"CD"|"CF"|"CG"|"CH"|"CI"|"CK"|"CL"|"CM"|"CN"|"CO"|"CR"|"CU"|"CV"|"CW"|"CX"|"CY"|"CZ"|"DE"|"DJ"|"DK"|"DM"|"DO"|"DZ"|"EC"|"EE"|"EG"|"EH"|"ER"|"ES"|"ET"|"FI"|"FJ"|"FK"|"FM"|"FO"|"FR"|"GA"|"GB"|"GD"|"GE"|"GF"|"GG"|"GH"|"GI"|"GL"|"GM"|"GN"|"GP"|"GQ"|"GR"|"GS"|"GT"|"GU"|"GW"|"GY"|"HK"|"HM"|"HN"|"HR"|"HT"|"HU"|"ID"|"IE"|"IL"|"IM"|"IN"|"IO"|"IQ"|"IR"|"IS"|"IT"|"JE"|"JM"|"JO"|"JP"|"KE"|"KG"|"KH"|"KI"|"KM"|"KN"|"KP"|"KR"|"KW"|"KY"|"KZ"|"LA"|"LB"|"LC"|"LI"|"LK"|"LR"|"LS"|"LT"|"LU"|"LV"|"LY"|"MA"|"MC"|"MD"|"ME"|"MF"|"MG"|"MH"|"MK"|"ML"|"MM"|"MN"|"MO"|"MP"|"MQ"|"MR"|"MS"|"MT"|"MU"|"MV"|"MW"|"MX"|"MY"|"MZ"|"NA"|"NC"|"NE"|"NF"|"NG"|"NI"|"NL"|"NO"|"NP"|"NR"|"NU"|"NZ"|"OM"|"PA"|"PE"|"PF"|"PG"|"PH"|"PK"|"PL"|"PM"|"PN"|"PR"|"PS"|"PT"|"PW"|"PY"|"QA"|"RE"|"RO"|"RS"|"RU"|"RW"|"SA"|"SB"|"SC"|"SD"|"SE"|"SG"|"SH"|"SI"|"SJ"|"SK"|"SL"|"SM"|"SN"|"SO"|"SR"|"SS"|"ST"|"SV"|"SX"|"SY"|"SZ"|"TC"|"TD"|"TF"|"TG"|"TH"|"TJ"|"TK"|"TL"|"TM"|"TN"|"TO"|"TP"|"TR"|"TT"|"TV"|"TW"|"TZ"|"UA"|"UG"|"US"|"UY"|"UZ"|"VA"|"VC"|"VE"|"VG"|"VI"|"VN"|"VU"|"WF"|"WS"|"YE"|"YT"|"ZA"|"ZM"|"ZW",
        ZipCode = "string",
        PhoneNumber = "string",
        Email = "string",
        Fax = "string",
        ExtraParams = list(
          list(
            Name = "DUNS_NUMBER"|"BRAND_NUMBER"|"BIRTH_DEPARTMENT"|"BIRTH_DATE_IN_YYYY_MM_DD"|"BIRTH_COUNTRY"|"BIRTH_CITY"|"DOCUMENT_NUMBER"|"AU_ID_NUMBER"|"AU_ID_TYPE"|"CA_LEGAL_TYPE"|"CA_BUSINESS_ENTITY_TYPE"|"CA_LEGAL_REPRESENTATIVE"|"CA_LEGAL_REPRESENTATIVE_CAPACITY"|"ES_IDENTIFICATION"|"ES_IDENTIFICATION_TYPE"|"ES_LEGAL_FORM"|"FI_BUSINESS_NUMBER"|"FI_ID_NUMBER"|"FI_NATIONALITY"|"FI_ORGANIZATION_TYPE"|"IT_NATIONALITY"|"IT_PIN"|"IT_REGISTRANT_ENTITY_TYPE"|"RU_PASSPORT_DATA"|"SE_ID_NUMBER"|"SG_ID_NUMBER"|"VAT_NUMBER"|"UK_CONTACT_TYPE"|"UK_COMPANY_NUMBER"|"EU_COUNTRY_OF_CITIZENSHIP"|"AU_PRIORITY_TOKEN",
            Value = "string"
          )
        )
      ),
      RegistrantContact = list(
        FirstName = "string",
        LastName = "string",
        ContactType = "PERSON"|"COMPANY"|"ASSOCIATION"|"PUBLIC_BODY"|"RESELLER",
        OrganizationName = "string",
        AddressLine1 = "string",
        AddressLine2 = "string",
        City = "string",
        State = "string",
        CountryCode = "AC"|"AD"|"AE"|"AF"|"AG"|"AI"|"AL"|"AM"|"AN"|"AO"|"AQ"|"AR"|"AS"|"AT"|"AU"|"AW"|"AX"|"AZ"|"BA"|"BB"|"BD"|"BE"|"BF"|"BG"|"BH"|"BI"|"BJ"|"BL"|"BM"|"BN"|"BO"|"BQ"|"BR"|"BS"|"BT"|"BV"|"BW"|"BY"|"BZ"|"CA"|"CC"|"CD"|"CF"|"CG"|"CH"|"CI"|"CK"|"CL"|"CM"|"CN"|"CO"|"CR"|"CU"|"CV"|"CW"|"CX"|"CY"|"CZ"|"DE"|"DJ"|"DK"|"DM"|"DO"|"DZ"|"EC"|"EE"|"EG"|"EH"|"ER"|"ES"|"ET"|"FI"|"FJ"|"FK"|"FM"|"FO"|"FR"|"GA"|"GB"|"GD"|"GE"|"GF"|"GG"|"GH"|"GI"|"GL"|"GM"|"GN"|"GP"|"GQ"|"GR"|"GS"|"GT"|"GU"|"GW"|"GY"|"HK"|"HM"|"HN"|"HR"|"HT"|"HU"|"ID"|"IE"|"IL"|"IM"|"IN"|"IO"|"IQ"|"IR"|"IS"|"IT"|"JE"|"JM"|"JO"|"JP"|"KE"|"KG"|"KH"|"KI"|"KM"|"KN"|"KP"|"KR"|"KW"|"KY"|"KZ"|"LA"|"LB"|"LC"|"LI"|"LK"|"LR"|"LS"|"LT"|"LU"|"LV"|"LY"|"MA"|"MC"|"MD"|"ME"|"MF"|"MG"|"MH"|"MK"|"ML"|"MM"|"MN"|"MO"|"MP"|"MQ"|"MR"|"MS"|"MT"|"MU"|"MV"|"MW"|"MX"|"MY"|"MZ"|"NA"|"NC"|"NE"|"NF"|"NG"|"NI"|"NL"|"NO"|"NP"|"NR"|"NU"|"NZ"|"OM"|"PA"|"PE"|"PF"|"PG"|"PH"|"PK"|"PL"|"PM"|"PN"|"PR"|"PS"|"PT"|"PW"|"PY"|"QA"|"RE"|"RO"|"RS"|"RU"|"RW"|"SA"|"SB"|"SC"|"SD"|"SE"|"SG"|"SH"|"SI"|"SJ"|"SK"|"SL"|"SM"|"SN"|"SO"|"SR"|"SS"|"ST"|"SV"|"SX"|"SY"|"SZ"|"TC"|"TD"|"TF"|"TG"|"TH"|"TJ"|"TK"|"TL"|"TM"|"TN"|"TO"|"TP"|"TR"|"TT"|"TV"|"TW"|"TZ"|"UA"|"UG"|"US"|"UY"|"UZ"|"VA"|"VC"|"VE"|"VG"|"VI"|"VN"|"VU"|"WF"|"WS"|"YE"|"YT"|"ZA"|"ZM"|"ZW",
        ZipCode = "string",
        PhoneNumber = "string",
        Email = "string",
        Fax = "string",
        ExtraParams = list(
          list(
            Name = "DUNS_NUMBER"|"BRAND_NUMBER"|"BIRTH_DEPARTMENT"|"BIRTH_DATE_IN_YYYY_MM_DD"|"BIRTH_COUNTRY"|"BIRTH_CITY"|"DOCUMENT_NUMBER"|"AU_ID_NUMBER"|"AU_ID_TYPE"|"CA_LEGAL_TYPE"|"CA_BUSINESS_ENTITY_TYPE"|"CA_LEGAL_REPRESENTATIVE"|"CA_LEGAL_REPRESENTATIVE_CAPACITY"|"ES_IDENTIFICATION"|"ES_IDENTIFICATION_TYPE"|"ES_LEGAL_FORM"|"FI_BUSINESS_NUMBER"|"FI_ID_NUMBER"|"FI_NATIONALITY"|"FI_ORGANIZATION_TYPE"|"IT_NATIONALITY"|"IT_PIN"|"IT_REGISTRANT_ENTITY_TYPE"|"RU_PASSPORT_DATA"|"SE_ID_NUMBER"|"SG_ID_NUMBER"|"VAT_NUMBER"|"UK_CONTACT_TYPE"|"UK_COMPANY_NUMBER"|"EU_COUNTRY_OF_CITIZENSHIP"|"AU_PRIORITY_TOKEN",
            Value = "string"
          )
        )
      ),
      TechContact = list(
        FirstName = "string",
        LastName = "string",
        ContactType = "PERSON"|"COMPANY"|"ASSOCIATION"|"PUBLIC_BODY"|"RESELLER",
        OrganizationName = "string",
        AddressLine1 = "string",
        AddressLine2 = "string",
        City = "string",
        State = "string",
        CountryCode = "AC"|"AD"|"AE"|"AF"|"AG"|"AI"|"AL"|"AM"|"AN"|"AO"|"AQ"|"AR"|"AS"|"AT"|"AU"|"AW"|"AX"|"AZ"|"BA"|"BB"|"BD"|"BE"|"BF"|"BG"|"BH"|"BI"|"BJ"|"BL"|"BM"|"BN"|"BO"|"BQ"|"BR"|"BS"|"BT"|"BV"|"BW"|"BY"|"BZ"|"CA"|"CC"|"CD"|"CF"|"CG"|"CH"|"CI"|"CK"|"CL"|"CM"|"CN"|"CO"|"CR"|"CU"|"CV"|"CW"|"CX"|"CY"|"CZ"|"DE"|"DJ"|"DK"|"DM"|"DO"|"DZ"|"EC"|"EE"|"EG"|"EH"|"ER"|"ES"|"ET"|"FI"|"FJ"|"FK"|"FM"|"FO"|"FR"|"GA"|"GB"|"GD"|"GE"|"GF"|"GG"|"GH"|"GI"|"GL"|"GM"|"GN"|"GP"|"GQ"|"GR"|"GS"|"GT"|"GU"|"GW"|"GY"|"HK"|"HM"|"HN"|"HR"|"HT"|"HU"|"ID"|"IE"|"IL"|"IM"|"IN"|"IO"|"IQ"|"IR"|"IS"|"IT"|"JE"|"JM"|"JO"|"JP"|"KE"|"KG"|"KH"|"KI"|"KM"|"KN"|"KP"|"KR"|"KW"|"KY"|"KZ"|"LA"|"LB"|"LC"|"LI"|"LK"|"LR"|"LS"|"LT"|"LU"|"LV"|"LY"|"MA"|"MC"|"MD"|"ME"|"MF"|"MG"|"MH"|"MK"|"ML"|"MM"|"MN"|"MO"|"MP"|"MQ"|"MR"|"MS"|"MT"|"MU"|"MV"|"MW"|"MX"|"MY"|"MZ"|"NA"|"NC"|"NE"|"NF"|"NG"|"NI"|"NL"|"NO"|"NP"|"NR"|"NU"|"NZ"|"OM"|"PA"|"PE"|"PF"|"PG"|"PH"|"PK"|"PL"|"PM"|"PN"|"PR"|"PS"|"PT"|"PW"|"PY"|"QA"|"RE"|"RO"|"RS"|"RU"|"RW"|"SA"|"SB"|"SC"|"SD"|"SE"|"SG"|"SH"|"SI"|"SJ"|"SK"|"SL"|"SM"|"SN"|"SO"|"SR"|"SS"|"ST"|"SV"|"SX"|"SY"|"SZ"|"TC"|"TD"|"TF"|"TG"|"TH"|"TJ"|"TK"|"TL"|"TM"|"TN"|"TO"|"TP"|"TR"|"TT"|"TV"|"TW"|"TZ"|"UA"|"UG"|"US"|"UY"|"UZ"|"VA"|"VC"|"VE"|"VG"|"VI"|"VN"|"VU"|"WF"|"WS"|"YE"|"YT"|"ZA"|"ZM"|"ZW",
        ZipCode = "string",
        PhoneNumber = "string",
        Email = "string",
        Fax = "string",
        ExtraParams = list(
          list(
            Name = "DUNS_NUMBER"|"BRAND_NUMBER"|"BIRTH_DEPARTMENT"|"BIRTH_DATE_IN_YYYY_MM_DD"|"BIRTH_COUNTRY"|"BIRTH_CITY"|"DOCUMENT_NUMBER"|"AU_ID_NUMBER"|"AU_ID_TYPE"|"CA_LEGAL_TYPE"|"CA_BUSINESS_ENTITY_TYPE"|"CA_LEGAL_REPRESENTATIVE"|"CA_LEGAL_REPRESENTATIVE_CAPACITY"|"ES_IDENTIFICATION"|"ES_IDENTIFICATION_TYPE"|"ES_LEGAL_FORM"|"FI_BUSINESS_NUMBER"|"FI_ID_NUMBER"|"FI_NATIONALITY"|"FI_ORGANIZATION_TYPE"|"IT_NATIONALITY"|"IT_PIN"|"IT_REGISTRANT_ENTITY_TYPE"|"RU_PASSPORT_DATA"|"SE_ID_NUMBER"|"SG_ID_NUMBER"|"VAT_NUMBER"|"UK_CONTACT_TYPE"|"UK_COMPANY_NUMBER"|"EU_COUNTRY_OF_CITIZENSHIP"|"AU_PRIORITY_TOKEN",
            Value = "string"
          )
        )
      ),
      PrivacyProtectAdminContact = TRUE|FALSE,
      PrivacyProtectRegistrantContact = TRUE|FALSE,
      PrivacyProtectTechContact = TRUE|FALSE
    )
