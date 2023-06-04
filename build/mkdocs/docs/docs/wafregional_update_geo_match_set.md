<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_update_geo_match_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Inserts or deletes GeoMatchConstraint objects in an `GeoMatchSet`. For
each `GeoMatchConstraint` object, you specify the following values:

-   Whether to insert or delete the object from the array. If you want
    to change an `GeoMatchConstraint` object, you delete the existing
    object and add a new one.

-   The `Type`. The only valid value for `Type` is `Country`.

-   The `Value`, which is a two character code for the country to add to
    the `GeoMatchConstraint` object. Valid codes are listed in
    GeoMatchConstraint$Value.

To create and configure an `GeoMatchSet`, perform the following steps:

1.  Submit a `create_geo_match_set` request.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_geo_match_set` request.

3.  Submit an `update_geo_match_set` request to specify the country that
    you want AWS WAF to watch for.

When you update an `GeoMatchSet`, you specify the country that you want
to add and/or the country that you want to delete. If you want to change
a country, you delete the existing country and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_update_geo_match_set(GeoMatchSetId, ChangeToken, Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_update_geo_match_set_:_GeoMatchSetId">GeoMatchSetId</code></td>
<td><p>[required] The <code>GeoMatchSetId</code> of the GeoMatchSet that
you want to update. <code>GeoMatchSetId</code> is returned by
<code>create_geo_match_set</code> and by
<code>list_geo_match_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_update_geo_match_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafregional_update_geo_match_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>GeoMatchSetUpdate</code> objects
that you want to insert into or delete from an GeoMatchSet. For more
information, see the applicable data types:</p>
<ul>
<li><p>GeoMatchSetUpdate: Contains <code>Action</code> and
<code>GeoMatchConstraint</code></p></li>
<li><p>GeoMatchConstraint: Contains <code>Type</code> and
<code>Value</code></p>
<p>You can have only one <code>Type</code> and <code>Value</code> per
<code>GeoMatchConstraint</code>. To add multiple countries, include
multiple <code>GeoMatchSetUpdate</code> objects in your
request.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_geo_match_set(
      GeoMatchSetId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          GeoMatchConstraint = list(
            Type = "Country",
            Value = "AF"|"AX"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BQ"|"BA"|"BW"|"BV"|"BR"|"IO"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CG"|"CD"|"CK"|"CR"|"CI"|"HR"|"CU"|"CW"|"CY"|"CZ"|"DK"|"DJ"|"DM"|"DO"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"GF"|"PF"|"TF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GP"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HM"|"VA"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KP"|"KR"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MQ"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"NF"|"MP"|"NO"|"OM"|"PK"|"PW"|"PS"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"GS"|"SS"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TL"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"UG"|"UA"|"AE"|"GB"|"US"|"UM"|"UY"|"UZ"|"VU"|"VE"|"VN"|"VG"|"VI"|"WF"|"EH"|"YE"|"ZM"|"ZW"
          )
        )
      )
    )
