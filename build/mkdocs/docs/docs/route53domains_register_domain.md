<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_register_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation registers a domain

### Description

This operation registers a domain. Domains are registered either by
Amazon Registrar (for .com, .net, and .org domains) or by our registrar
associate, Gandi (for all other domains). For some top-level domains
(TLDs), this operation requires extra parameters.

When you register a domain, Amazon Route 53 does the following:

-   Creates a Route 53 hosted zone that has the same name as the domain.
    Route 53 assigns four name servers to your hosted zone and
    automatically updates your domain registration with the names of
    these name servers.

-   Enables auto renew, so your domain registration will renew
    automatically each year. We'll notify you in advance of the renewal
    date so you can choose whether to renew the registration.

-   Optionally enables privacy protection, so WHOIS queries return
    contact information either for Amazon Registrar (for .com, .net, and
    .org domains) or for our registrar associate, Gandi (for all other
    TLDs). If you don't enable privacy protection, WHOIS queries return
    the information that you entered for the administrative, registrant,
    and technical contacts.

    You must specify the same privacy setting for the administrative,
    registrant, and technical contacts.

-   If registration is successful, returns an operation ID that you can
    use to track the progress and completion of the action. If the
    request is not completed successfully, the domain registrant is
    notified by email.

-   Charges your Amazon Web Services account an amount based on the
    top-level domain. For more information, see [Amazon Route 53
    Pricing](https://aws.amazon.com/route53/pricing/).

### Usage

    route53domains_register_domain(DomainName, IdnLangCode, DurationInYears,
      AutoRenew, AdminContact, RegistrantContact, TechContact,
      PrivacyProtectAdminContact, PrivacyProtectRegistrantContact,
      PrivacyProtectTechContact)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_register_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name that you want to register. The
top-level domain (TLD), such as .com, must be a TLD that Route 53
supports. For a list of supported TLDs, see <a
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
</ul>
<p>Internationalized domain names are not supported for some top-level
domains. To determine whether the TLD that you want to use supports
internationalized domain names, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a>. For more information,
see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting
Internationalized Domain Names</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_register_domain_:_IdnLangCode">IdnLangCode</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_register_domain_:_DurationInYears">DurationInYears</code></td>
<td><p>[required] The number of years that you want to register the
domain for. Domains are registered for a minimum of one year. The
maximum period depends on the top-level domain. For the range of valid
values for your domain, see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
that You Can Register with Amazon Route 53</a> in the <em>Amazon Route
53 Developer Guide</em>.</p>
<p>Default: 1</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_register_domain_:_AutoRenew">AutoRenew</code></td>
<td><p>Indicates whether the domain will be automatically renewed
(<code>true</code>) or not (<code>false</code>). Auto renewal only takes
effect after the account is charged.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_register_domain_:_AdminContact">AdminContact</code></td>
<td><p>[required] Provides detailed contact information. For information
about the values that you specify for each element, see <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_register_domain_:_RegistrantContact">RegistrantContact</code></td>
<td><p>[required] Provides detailed contact information. For information
about the values that you specify for each element, see <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_register_domain_:_TechContact">TechContact</code></td>
<td><p>[required] Provides detailed contact information. For information
about the values that you specify for each element, see <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_register_domain_:_PrivacyProtectAdminContact">PrivacyProtectAdminContact</code></td>
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
id="route53domains_register_domain_:_PrivacyProtectRegistrantContact">PrivacyProtectRegistrantContact</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the registrant contact (the domain
owner).</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_register_domain_:_PrivacyProtectTechContact">PrivacyProtectTechContact</code></td>
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

    svc$register_domain(
      DomainName = "string",
      IdnLangCode = "string",
      DurationInYears = 123,
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
