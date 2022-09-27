--Q1

SELECT prescriber.npi, SUM(total_claim_count) as grand_total_claims
FROM prescriber INNER JOIN prescription
ON prescriber.npi = prescription.npi
GROUP BY prescriber.npi
ORDER BY SUM(total_claim_count) DESC;

--B.
SELECT prescriber.npi, nppes_provider_first_name, nppes_provider_last_org_name, specialty_description, SUM(total_claim_count) as grand_total_claims
FROM prescriber INNER JOIN prescription
ON prescriber.npi = prescription.npi
GROUP BY prescriber.npi, nppes_provider_first_name, nppes_provider_last_org_name, specialty_description
ORDER BY SUM(total_claim_count) DESC;

--Q2







--Q3



--Q4