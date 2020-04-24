# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..100).each do |i|
#   company = Company.create(name: "company " + i.to_s)
#   (0..rand(1..5)).each do |x|
#     Domain.create(urls: ["domain " + x.to_s], company: company)
#   end
# end

vulns = {
    "CVE-2018-10549": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/104019",
            "http://www.securitytracker.com/id/1040807",
            "https://bugs.php.net/bug.php?id=76130",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html",
            "https://security.gentoo.org/glsa/201812-01",
            "https://security.netapp.com/advisory/ntap-20180607-0003/",
            "https://usn.ubuntu.com/3646-1/",
            "https://www.debian.org/security/2018/dsa-4240",
            "https://www.synology.com/support/security/Synology_SA_18_20",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "6.8",
        "summary": "An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. exif_read_data in ext/exif/exif.c has an out-of-bounds read for crafted JPEG data because exif_iif_add_value mishandles the case of a MakerNote that lacks a final '\\0' character."
    },
    "CVE-2018-10548": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/104019",
            "http://www.securitytracker.com/id/1040807",
            "https://bugs.php.net/bug.php?id=76248",
            "https://lists.debian.org/debian-lts-announce/2018/05/msg00004.html",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html",
            "https://security.gentoo.org/glsa/201812-01",
            "https://security.netapp.com/advisory/ntap-20180607-0003/",
            "https://usn.ubuntu.com/3646-1/",
            "https://usn.ubuntu.com/3646-2/",
            "https://www.debian.org/security/2018/dsa-4240",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. ext/ldap/ldap.c allows remote LDAP servers to cause a denial of service (NULL pointer dereference and application crash) because of mishandling of the ldap_get_dn return value."
    },
    "CVE-2018-10545": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/104022",
            "https://bugs.php.net/bug.php?id=75605",
            "https://lists.debian.org/debian-lts-announce/2018/05/msg00004.html",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html",
            "https://security.gentoo.org/glsa/201812-01",
            "https://security.netapp.com/advisory/ntap-20180607-0003/",
            "https://usn.ubuntu.com/3646-1/",
            "https://usn.ubuntu.com/3646-2/",
            "https://www.debian.org/security/2018/dsa-4240",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "1.9",
        "summary": "An issue was discovered in PHP before 5.6.35, 7.0.x before 7.0.29, 7.1.x before 7.1.16, and 7.2.x before 7.2.4. Dumpable FPM child processes allow bypassing opcache access controls because fpm_unix.c makes a PR_SET_DUMPABLE prctl call, allowing one user (in a multiuser environment) to obtain sensitive information from the process memory of a second user's PHP applications by running gcore on the PID of the PHP-FPM worker process."
    },
    "CVE-2017-7679": {
        "verified": false,
        "references": [
            "http://www.debian.org/security/2017/dsa-3896",
            "http://www.oracle.com/technetwork/security-advisory/cpuoct2017-3236626.html",
            "http://www.securityfocus.com/bid/99170",
            "http://www.securitytracker.com/id/1038711",
            "https://access.redhat.com/errata/RHSA-2017:2478",
            "https://access.redhat.com/errata/RHSA-2017:2479",
            "https://access.redhat.com/errata/RHSA-2017:2483",
            "https://access.redhat.com/errata/RHSA-2017:3193",
            "https://access.redhat.com/errata/RHSA-2017:3194",
            "https://access.redhat.com/errata/RHSA-2017:3195",
            "https://access.redhat.com/errata/RHSA-2017:3475",
            "https://access.redhat.com/errata/RHSA-2017:3476",
            "https://access.redhat.com/errata/RHSA-2017:3477",
            "https://github.com/gottburgm/Exploits/tree/master/CVE-2017-7679",
            "https://lists.apache.org/thread.html/f4515e580dfb6eeca589a5cdebd4c4c709ce632b12924f343c3b7751@%3Cdev.httpd.apache.org%3E",
            "https://security.gentoo.org/glsa/201710-32",
            "https://security.netapp.com/advisory/ntap-20180601-0002/",
            "https://support.apple.com/HT208221",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbhf03821en_us",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03908en_us",
            "https://www.nomachine.com/SU08O00185"
        ],
        "cvss": "7.5",
        "summary": "In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_mime can read one byte past the end of a buffer when sending a malicious Content-Type response header."
    },
    "CVE-2018-10546": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/104019",
            "http://www.securitytracker.com/id/1040807",
            "https://bugs.php.net/bug.php?id=76249",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html",
            "https://security.gentoo.org/glsa/201812-01",
            "https://security.netapp.com/advisory/ntap-20180607-0003/",
            "https://usn.ubuntu.com/3646-1/",
            "https://www.debian.org/security/2018/dsa-4240",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. An infinite loop exists in ext/iconv/iconv.c because the iconv stream filter does not reject invalid multibyte sequences."
    },
    "CVE-2019-9641": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "https://bugs.php.net/bug.php?id=77509",
            "https://lists.debian.org/debian-lts-announce/2019/03/msg00043.html",
            "https://security.netapp.com/advisory/ntap-20190502-0007/",
            "https://usn.ubuntu.com/3922-1/",
            "https://usn.ubuntu.com/3922-2/",
            "https://usn.ubuntu.com/3922-3/",
            "https://www.debian.org/security/2019/dsa-4403"
        ],
        "cvss": "7.5",
        "summary": "An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_TIFF."
    },
    "CVE-2018-1312": {
        "verified": false,
        "references": [
            "http://www.openwall.com/lists/oss-security/2018/03/24/7",
            "http://www.securityfocus.com/bid/103524",
            "http://www.securitytracker.com/id/1040571",
            "https://access.redhat.com/errata/RHSA-2018:3558",
            "https://access.redhat.com/errata/RHSA-2019:0366",
            "https://access.redhat.com/errata/RHSA-2019:0367",
            "https://access.redhat.com/errata/RHSA-2019:1898",
            "https://httpd.apache.org/security/vulnerabilities_24.html",
            "https://lists.debian.org/debian-lts-announce/2018/05/msg00020.html",
            "https://security.netapp.com/advisory/ntap-20180601-0004/",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03909en_us",
            "https://usn.ubuntu.com/3627-1/",
            "https://usn.ubuntu.com/3627-2/",
            "https://usn.ubuntu.com/3937-2/",
            "https://www.debian.org/security/2018/dsa-4164"
        ],
        "cvss": "6.8",
        "summary": "In Apache httpd 2.2.0 to 2.4.29, when generating an HTTP Digest authentication challenge, the nonce sent to prevent reply attacks was not correctly generated using a pseudo-random seed. In a cluster of servers using a common Digest authentication configuration, HTTP requests could be replayed across servers by an attacker without detection."
    },
    "CVE-2018-19520": {
        "verified": false,
        "references": [
            "https://blog.whiterabbitxyj.com/cve/SDCMS_1.6_code_execution.doc",
            "https://github.com/WhiteRabbitc/WhiteRabbitc.github.io/blob/master/cve/SDCMS_1.6_code_execution.doc"
        ],
        "cvss": 6.5,
        "summary": "An issue was discovered in SDCMS 1.6 with PHP 5.x. app/admin/controller/themecontroller.php uses a check_bad function in an attempt to block certain PHP functions such as eval, but does not prevent use of preg_replace 'e' calls, allowing users to execute arbitrary code by leveraging access to admin template management."
    },
    "CVE-2018-19396": {
        "verified": false,
        "references": [
            "http://www.securityfocus.com/bid/105989",
            "https://bugs.php.net/bug.php?id=77177",
            "https://security.netapp.com/advisory/ntap-20181221-0005/"
        ],
        "cvss": 5.0,
        "summary": "ext/standard/var_unserializer.c in PHP 5.x through 7.1.24 allows attackers to cause a denial of service (application crash) via an unserialize call for the com, dotnet, or variant class."
    },
    "CVE-2018-19395": {
        "verified": false,
        "references": [
            "http://www.securityfocus.com/bid/105989",
            "https://bugs.php.net/bug.php?id=77177",
            "https://security.netapp.com/advisory/ntap-20181221-0005/"
        ],
        "cvss": 5.0,
        "summary": "ext/standard/var.c in PHP 5.x through 7.1.24 on Windows allows attackers to cause a denial of service (NULL pointer dereference and application crash) because com and com_safearray_proxy return NULL in com_properties_get in ext/com_dotnet/com_handlers.c, as demonstrated by a serialize call on COM(\"WScript.Shell\")."
    },
    "CVE-2016-8612": {
        "verified": false,
        "references": [
            "http://rhn.redhat.com/errata/RHSA-2016-2957.html",
            "http://www.securityfocus.com/bid/94939",
            "https://access.redhat.com/errata/RHSA-2017:0193",
            "https://access.redhat.com/errata/RHSA-2017:0194",
            "https://bugzilla.redhat.com/show_bug.cgi?id=1387605",
            "https://security.netapp.com/advisory/ntap-20180601-0005/"
        ],
        "cvss": "3.3",
        "summary": "Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process."
    },
    "CVE-2018-19935": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "http://www.securityfocus.com/bid/106143",
            "https://bugs.php.net/bug.php?id=77020",
            "https://lists.debian.org/debian-lts-announce/2018/12/msg00006.html",
            "https://security.netapp.com/advisory/ntap-20181221-0003/",
            "https://www.debian.org/security/2018/dsa-4353"
        ],
        "cvss": "5.0",
        "summary": "ext/imap/php_imap.c in PHP 5.x and 7.x before 7.3.0 allows remote attackers to cause a denial of service (NULL pointer dereference and application crash) via an empty string in the message argument to the imap_mail function."
    },
    "CVE-2018-17082": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "https://bugs.php.net/bug.php?id=76582",
            "https://github.com/php/php-src/commit/23b057742e3cf199612fa8050ae86cae675e214e",
            "https://lists.debian.org/debian-lts-announce/2018/09/msg00020.html",
            "https://security.gentoo.org/glsa/201812-01",
            "https://security.netapp.com/advisory/ntap-20180924-0001/",
            "https://www.debian.org/security/2018/dsa-4353"
        ],
        "cvss": "4.3",
        "summary": "The Apache2 component in PHP before 5.6.38, 7.0.x before 7.0.32, 7.1.x before 7.1.22, and 7.2.x before 7.2.10 allows XSS via the body of a \"Transfer-Encoding: chunked\" request, because the bucket brigade is mishandled in the php_handler function in sapi/apache2handler/sapi_apache2.c."
    },
    "CVE-2019-9639": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00012.html",
            "https://bugs.php.net/bug.php?id=77659",
            "https://lists.debian.org/debian-lts-announce/2019/03/msg00043.html",
            "https://security.netapp.com/advisory/ntap-20190502-0007/",
            "https://usn.ubuntu.com/3922-1/",
            "https://usn.ubuntu.com/3922-2/",
            "https://usn.ubuntu.com/3922-3/",
            "https://www.debian.org/security/2019/dsa-4403"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the data_len variable."
    },
    "CVE-2019-9638": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00012.html",
            "https://bugs.php.net/bug.php?id=77563",
            "https://lists.debian.org/debian-lts-announce/2019/03/msg00043.html",
            "https://security.netapp.com/advisory/ntap-20190502-0007/",
            "https://usn.ubuntu.com/3922-1/",
            "https://usn.ubuntu.com/3922-2/",
            "https://usn.ubuntu.com/3922-3/",
            "https://www.debian.org/security/2019/dsa-4403"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in the EXIF component in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. There is an uninitialized read in exif_process_IFD_in_MAKERNOTE because of mishandling the maker_note->offset relationship to value_len."
    },
    "CVE-2017-7668": {
        "verified": false,
        "references": [
            "http://www.debian.org/security/2017/dsa-3896",
            "http://www.oracle.com/technetwork/security-advisory/cpuoct2017-3236626.html",
            "http://www.securityfocus.com/bid/99137",
            "http://www.securitytracker.com/id/1038711",
            "https://access.redhat.com/errata/RHSA-2017:2479",
            "https://access.redhat.com/errata/RHSA-2017:2483",
            "https://access.redhat.com/errata/RHSA-2017:3193",
            "https://access.redhat.com/errata/RHSA-2017:3194",
            "https://lists.apache.org/thread.html/55a068b6a5eec0b3198ae7d96a7cb412352d0ffa7716612c5af3745b@%3Cdev.httpd.apache.org%3E",
            "https://security.gentoo.org/glsa/201710-32",
            "https://security.netapp.com/advisory/ntap-20180601-0002/",
            "https://support.apple.com/HT208221",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbhf03821en_us",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03908en_us"
        ],
        "cvss": "7.5",
        "summary": "The HTTP strict parsing changes added in Apache httpd 2.2.32 and 2.4.24 introduced a bug in token list parsing, which allows ap_find_token() to search past the end of its input string. By maliciously crafting a sequence of request headers, an attacker may be able to cause a segmentation fault, or to force ap_find_token() to return an incorrect value."
    },
    "CVE-2019-9637": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00012.html",
            "https://bugs.php.net/bug.php?id=77630",
            "https://lists.debian.org/debian-lts-announce/2019/03/msg00043.html",
            "https://security.netapp.com/advisory/ntap-20190502-0007/",
            "https://support.f5.com/csp/article/K53825211",
            "https://usn.ubuntu.com/3922-1/",
            "https://usn.ubuntu.com/3922-2/",
            "https://usn.ubuntu.com/3922-3/",
            "https://www.debian.org/security/2019/dsa-4403"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in PHP before 7.1.27, 7.2.x before 7.2.16, and 7.3.x before 7.3.3. Due to the way rename() across filesystems is implemented, it is possible that file being renamed is briefly available with wrong permissions while the rename is ongoing, thus enabling unauthorized users to access the data."
    },
    "CVE-2018-10547": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securitytracker.com/id/1040807",
            "https://bugs.php.net/bug.php?id=76129",
            "https://lists.debian.org/debian-lts-announce/2018/05/msg00004.html",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html",
            "https://security.netapp.com/advisory/ntap-20180607-0003/",
            "https://usn.ubuntu.com/3646-1/",
            "https://usn.ubuntu.com/3646-2/",
            "https://www.debian.org/security/2018/dsa-4240",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "4.3",
        "summary": "An issue was discovered in ext/phar/phar_object.c in PHP before 5.6.36, 7.0.x before 7.0.30, 7.1.x before 7.1.17, and 7.2.x before 7.2.5. There is Reflected XSS on the PHAR 403 and 404 error pages via request data of a request for a .phar file. NOTE: this vulnerability exists because of an incomplete fix for CVE-2018-5712."
    },
    "CVE-2018-20783": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "https://bugs.php.net/bug.php?id=77143",
            "https://usn.ubuntu.com/3566-2/"
        ],
        "cvss": "5.0",
        "summary": "In PHP before 5.6.39, 7.x before 7.0.33, 7.1.x before 7.1.25, and 7.2.x before 7.2.13, a buffer over-read in PHAR reading functions may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse a .phar file. This is related to phar_parse_pharfile in ext/phar/phar.c."
    },
    "CVE-2017-12868": {
        "verified": false,
        "references": [
            "https://github.com/simplesamlphp/simplesamlphp/commit/4bc629658e7b7d17c9ac3fe0da7dc5df71f1b85e",
            "https://lists.debian.org/debian-lts-announce/2017/12/msg00007.html",
            "https://lists.debian.org/debian-lts-announce/2018/06/msg00017.html",
            "https://simplesamlphp.org/security/201705-01"
        ],
        "cvss": "7.5",
        "summary": "The secureCompare method in lib/SimpleSAML/Utils/Crypto.php in SimpleSAMLphp 1.14.13 and earlier, when used with PHP before 5.6, allows attackers to conduct session fixation attacks or possibly bypass authentication by leveraging missing character conversions before an XOR operation."
    },
    "CVE-2018-14883": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/104871",
            "https://bugs.php.net/bug.php?id=76423",
            "https://lists.debian.org/debian-lts-announce/2018/09/msg00000.html",
            "https://security.netapp.com/advisory/ntap-20181107-0003/",
            "https://usn.ubuntu.com/3766-1/",
            "https://usn.ubuntu.com/3766-2/",
            "https://www.debian.org/security/2018/dsa-4353",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. An Integer Overflow leads to a heap-based buffer over-read in exif_thumbnail_extract of exif.c."
    },
    "CVE-2019-6977": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00025.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00031.html",
            "http://packetstormsecurity.com/files/152459/PHP-7.2-imagecolormatch-Out-Of-Band-Heap-Write.html",
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/106731",
            "https://bugs.php.net/bug.php?id=77270",
            "https://lists.debian.org/debian-lts-announce/2019/01/msg00028.html",
            "https://security.gentoo.org/glsa/201903-18",
            "https://security.netapp.com/advisory/ntap-20190315-0003/",
            "https://usn.ubuntu.com/3900-1/",
            "https://www.debian.org/security/2019/dsa-4384",
            "https://www.exploit-db.com/exploits/46677/"
        ],
        "cvss": "6.8",
        "summary": "gdImageColorMatch in gd_color_match.c in the GD Graphics Library (aka LibGD) 2.2.5, as used in the imagecolormatch function in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1, has a heap-based buffer overflow. This can be exploited by an attacker who is able to trigger imagecolormatch calls with crafted image data."
    },
    "CVE-2017-3167": {
        "verified": false,
        "references": [
            "http://www.debian.org/security/2017/dsa-3896",
            "http://www.oracle.com/technetwork/security-advisory/cpuoct2017-3236626.html",
            "http://www.securityfocus.com/bid/99135",
            "http://www.securitytracker.com/id/1038711",
            "https://access.redhat.com/errata/RHSA-2017:2478",
            "https://access.redhat.com/errata/RHSA-2017:2479",
            "https://access.redhat.com/errata/RHSA-2017:2483",
            "https://access.redhat.com/errata/RHSA-2017:3193",
            "https://access.redhat.com/errata/RHSA-2017:3194",
            "https://access.redhat.com/errata/RHSA-2017:3195",
            "https://access.redhat.com/errata/RHSA-2017:3475",
            "https://access.redhat.com/errata/RHSA-2017:3476",
            "https://access.redhat.com/errata/RHSA-2017:3477",
            "https://lists.apache.org/thread.html/8409e41a8f7dd9ded37141c38df001be930115428c3d64f70bbdb8b4@%3Cdev.httpd.apache.org%3E",
            "https://security.gentoo.org/glsa/201710-32",
            "https://security.netapp.com/advisory/ntap-20180601-0002/",
            "https://support.apple.com/HT208221",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03908en_us",
            "https://www.nomachine.com/SU08O00185"
        ],
        "cvss": "7.5",
        "summary": "In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, use of the ap_get_basic_auth_pw() by third-party modules outside of the authentication phase may lead to authentication requirements being bypassed."
    },
    "CVE-2017-3169": {
        "verified": false,
        "references": [
            "http://www.debian.org/security/2017/dsa-3896",
            "http://www.oracle.com/technetwork/security-advisory/cpuoct2017-3236626.html",
            "http://www.securityfocus.com/bid/99134",
            "http://www.securitytracker.com/id/1038711",
            "https://access.redhat.com/errata/RHSA-2017:2478",
            "https://access.redhat.com/errata/RHSA-2017:2479",
            "https://access.redhat.com/errata/RHSA-2017:2483",
            "https://access.redhat.com/errata/RHSA-2017:3193",
            "https://access.redhat.com/errata/RHSA-2017:3194",
            "https://access.redhat.com/errata/RHSA-2017:3195",
            "https://access.redhat.com/errata/RHSA-2017:3475",
            "https://access.redhat.com/errata/RHSA-2017:3476",
            "https://access.redhat.com/errata/RHSA-2017:3477",
            "https://github.com/gottburgm/Exploits/tree/master/CVE-2017-3169",
            "https://lists.apache.org/thread.html/84bf7fcc5cad35d355f11839cbdd13cbc5ffc1d34675090bff0f96ae@%3Cdev.httpd.apache.org%3E",
            "https://security.gentoo.org/glsa/201710-32",
            "https://security.netapp.com/advisory/ntap-20180601-0002/",
            "https://support.apple.com/HT208221",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03908en_us",
            "https://www.nomachine.com/SU08O00185"
        ],
        "cvss": "7.5",
        "summary": "In Apache httpd 2.2.x before 2.2.33 and 2.4.x before 2.4.26, mod_ssl may dereference a NULL pointer when third-party modules call ap_hook_process_connection() during an HTTP request to an HTTPS port."
    },
    "CVE-2016-4975": {
        "verified": false,
        "references": [
            "http://www.securityfocus.com/bid/105093",
            "https://httpd.apache.org/security/vulnerabilities_22.html#CVE-2016-4975",
            "https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2016-4975",
            "https://security.netapp.com/advisory/ntap-20180926-0006/",
            "https://support.hpe.com/hpsc/doc/public/display?docLocale=en_US&docId=emr_na-hpesbux03908en_us"
        ],
        "cvss": "4.3",
        "summary": "Possible CRLF injection allowing HTTP response splitting attacks for sites which use mod_userdir. This issue was mitigated by changes made in 2.4.25 and 2.2.32 which prohibit CR or LF injection into the \"Location\" or other outbound header key or value. Fixed in Apache HTTP Server 2.4.25 (Affected 2.4.1-2.4.23). Fixed in Apache HTTP Server 2.2.32 (Affected 2.2.0-2.2.31)."
    },
    "CVE-2019-9023": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "http://www.securityfocus.com/bid/107156",
            "https://bugs.php.net/bug.php?id=77370",
            "https://bugs.php.net/bug.php?id=77371",
            "https://bugs.php.net/bug.php?id=77381",
            "https://bugs.php.net/bug.php?id=77382",
            "https://bugs.php.net/bug.php?id=77385",
            "https://bugs.php.net/bug.php?id=77394",
            "https://bugs.php.net/bug.php?id=77418",
            "https://security.netapp.com/advisory/ntap-20190321-0001/",
            "https://support.f5.com/csp/article/K06372014",
            "https://usn.ubuntu.com/3902-1/",
            "https://usn.ubuntu.com/3902-2/",
            "https://www.debian.org/security/2019/dsa-4398"
        ],
        "cvss": "7.5",
        "summary": "An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A number of heap-based buffer over-read instances are present in mbstring regular expression functions when supplied with invalid multibyte data. These occur in ext/mbstring/oniguruma/regcomp.c, ext/mbstring/oniguruma/regexec.c, ext/mbstring/oniguruma/regparse.c, ext/mbstring/oniguruma/enc/unicode.c, and ext/mbstring/oniguruma/src/utf32_be.c when a multibyte regular expression pattern contains invalid multibyte sequences."
    },
    "CVE-2019-9020": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "http://www.securityfocus.com/bid/107156",
            "https://bugs.php.net/bug.php?id=77242",
            "https://bugs.php.net/bug.php?id=77249",
            "https://security.netapp.com/advisory/ntap-20190321-0001/",
            "https://usn.ubuntu.com/3902-1/",
            "https://usn.ubuntu.com/3902-2/",
            "https://www.debian.org/security/2019/dsa-4398"
        ],
        "cvss": "7.5",
        "summary": "An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. Invalid input to the function xmlrpc_decode() can lead to an invalid memory access (heap out of bounds read or read after free). This is related to xml_elem_parse_buf in ext/xmlrpc/libxmlrpc/xml_element.c."
    },
    "CVE-2019-9021": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "http://www.securityfocus.com/bid/106747",
            "http://www.securityfocus.com/bid/107156",
            "https://bugs.php.net/bug.php?id=77247",
            "https://security.netapp.com/advisory/ntap-20190321-0001/",
            "https://usn.ubuntu.com/3902-1/",
            "https://usn.ubuntu.com/3902-2/",
            "https://www.debian.org/security/2019/dsa-4398"
        ],
        "cvss": "7.5",
        "summary": "An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. A heap-based buffer over-read in PHAR reading functions in the PHAR extension may allow an attacker to read allocated or unallocated memory past the actual data when trying to parse the file name, a different vulnerability than CVE-2018-20783. This is related to phar_detect_phar_fname_ext in ext/phar/phar.c."
    },
    "CVE-2017-16642": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "http://www.securityfocus.com/bid/101745",
            "https://access.redhat.com/errata/RHSA-2018:1296",
            "https://bugs.php.net/bug.php?id=75055",
            "https://github.com/derickr/timelib/commit/aa9156006e88565e1f1a5f7cc088b18322d57536",
            "https://github.com/php/php-src/commit/5c0455bf2c8cd3c25401407f158e820aa3b239e1",
            "https://security.netapp.com/advisory/ntap-20181123-0001/",
            "https://usn.ubuntu.com/3566-1/",
            "https://www.debian.org/security/2018/dsa-4080",
            "https://www.debian.org/security/2018/dsa-4081",
            "https://www.exploit-db.com/exploits/43133/"
        ],
        "cvss": "5.0",
        "summary": "In PHP before 5.6.32, 7.x before 7.0.25, and 7.1.x before 7.1.11, an error in the date extension's timelib_meridian handling of 'front of' and 'back of' directives could be used by attackers able to supply date strings to leak information from the interpreter, related to ext/date/lib/parse_date.c out-of-bounds reads affecting the php_parse_date function. NOTE: this is a different issue than CVE-2017-11145."
    },
    "CVE-2019-9024": {
        "verified": false,
        "references": [
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00083.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-04/msg00104.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00041.html",
            "http://lists.opensuse.org/opensuse-security-announce/2019-06/msg00044.html",
            "http://www.securityfocus.com/bid/107156",
            "https://bugs.php.net/bug.php?id=77380",
            "https://security.netapp.com/advisory/ntap-20190321-0001/",
            "https://usn.ubuntu.com/3902-1/",
            "https://usn.ubuntu.com/3902-2/",
            "https://www.debian.org/security/2019/dsa-4398"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in PHP before 5.6.40, 7.x before 7.1.26, 7.2.x before 7.2.14, and 7.3.x before 7.3.1. xmlrpc_decode() can allow a hostile XMLRPC server to cause PHP to read memory outside of allocated areas in base64_decode_xmlrpc in ext/xmlrpc/libxmlrpc/base64.c."
    },
    "CVE-2018-15132": {
        "verified": false,
        "references": [
            "http://php.net/ChangeLog-5.php",
            "http://php.net/ChangeLog-7.php",
            "https://bugs.php.net/bug.php?id=76459",
            "https://github.com/php/php-src/commit/f151e048ed27f6f4eef729f3310d053ab5da71d4",
            "https://security.netapp.com/advisory/ntap-20181107-0003/",
            "https://www.tenable.com/security/tns-2018-12"
        ],
        "cvss": "5.0",
        "summary": "An issue was discovered in ext/standard/link_win32.c in PHP before 5.6.37, 7.0.x before 7.0.31, 7.1.x before 7.1.20, and 7.2.x before 7.2.8. The linkinfo function on Windows doesn't implement the open_basedir check. This could be abused to find files on paths outside of the allowed directories."
    }
}

domains = Domain.all
domains.each do |domain|
  details = domain[:details] || Hash.new
  if details.nil? or details[:ports].nil? or details[:ports].empty?
    ports = [8080, 80, 443, 8443, 2082, 22, 8880, 2086].sample(rand(1..8))
    details[:ports] = ports
  end
  if details.nil? or details[:vulns].nil? or  details[:vulns].empty? or true
    randomVulns = vulns.to_a.sample(rand(0..(vulns.size)))
    details[:vulns] = randomVulns
  end
  if details.nil? or details[:country].nil? or details[:country].empty?
    details[:country] = "United States"
  end
  domain.update_attribute(:details, details)
end