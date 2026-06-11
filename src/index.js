/**
 * index.js
 *
 * VULNERABILITY: CVE-2021-3807
 * Package:       ansi-regex@3.0.0
 * Severity:      HIGH (CVSS 7.5)
 * Type:          Regular Expression Denial of Service (ReDoS)
 * CWE:           CWE-1333
 *
 * Reachability:  The vulnerable ansi-regex is imported and its pattern is
 *                directly applied to user-supplied input (req.query.text).
 *                An attacker can send a crafted string such as:
 *                  "\u001B[" + "a".repeat(100000)
 *                to cause catastrophic backtracking and hang the process.
 *
 * Reference:     https://nvd.nist.gov/vuln/detail/CVE-2021-3807
 */

'use strict';

const ansiRegex = require('ansi-regex'); // ansi-regex@3.0.0 — vulnerable

/**
 * Strips ANSI escape codes from a user-supplied string.
 * The vulnerable regex is applied directly to untrusted input,
 * making CVE-2021-3807 reachable from an external HTTP request.
 *
 * @param {string} userInput - Raw string from an untrusted source (e.g. HTTP query param)
 * @returns {string} String with ANSI codes removed
 */
function stripAnsiCodes(userInput) {
  // REACHABLE: ansiRegex() returns the vulnerable RegExp from ansi-regex@3.0.0.
  // Passing attacker-controlled `userInput` directly triggers the ReDoS vector.
  return userInput.replace(ansiRegex(), '');
}

/**
 * Simulated HTTP request handler — mirrors a real Express/Lambda handler.
 * Demonstrates that the vulnerable code path is reachable from an
 * external network request without any sanitisation or length guard.
 *
 * @param {object} req - HTTP request object
 * @param {object} res - HTTP response object
 */
function handleRequest(req, res) {
  const rawText = req.query && req.query.text ? req.query.text : '';

  // No length check, no allow-list — attacker input flows straight into
  // the vulnerable regex. This is the reachable call site for CVE-2021-3807.
  const sanitised = stripAnsiCodes(rawText);

  res.send({ result: sanitised });
}

module.exports = { stripAnsiCodes, handleRequest };
