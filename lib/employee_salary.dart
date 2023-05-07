import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class employeeSalary extends StatefulWidget {
  const employeeSalary({super.key});

  @override
  State<employeeSalary> createState() => _employeeSalaryState();
}

class _employeeSalaryState extends State<employeeSalary> {
  @override
  Widget build(BuildContext context) {
    final _amount = TextEditingController();
    final _tax = TextEditingController();
    final _netsalary = TextEditingController();
    var size = MediaQuery.of(context).size;
    double cal;
    double result;
    double salary;
    double taxcal;
    double sum;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text("Employee Salary Calculation",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _amount,
                decoration: InputDecoration(
                    labelText: "Salary",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _tax,
                decoration: InputDecoration(
                    labelText: "Tax",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _netsalary,
                decoration: InputDecoration(
                    labelText: "NetSalary",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  salary = double.parse(_amount.text);
                  if (salary > 50000) {
                    taxcal = salary * 10 / 100;
                  } else if (salary > 30000) {
                    taxcal = salary * 5 / 100;
                  } else {
                    taxcal = 0;
                  }

                  result = salary - taxcal;
                  _tax.text = taxcal.toString();
                  _netsalary.text = result.toString();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Convert",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
