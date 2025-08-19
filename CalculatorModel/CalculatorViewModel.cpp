#include "CalculatorViewModel.h"

CalculatorViewModel::CalculatorViewModel() {
    qDebug() << Q_FUNC_INFO;

    m_buttons = {
        "AC", "C", "%", "÷",
        "7", "8", "9", "×",
        "4", "5", "6", "-",
        "1", "2", "3", "+",
        ".", "0", "00", "="
    };
}

CalculatorViewModel::~CalculatorViewModel()
{
    qDebug() << Q_FUNC_INFO;
}

QString CalculatorViewModel::evaluateExpression(const QString &expr)
{
    qDebug() << Q_FUNC_INFO;

    QString expression = expr;
    expression.replace("÷", "/");
    expression.replace("×", "*");

    static const QRegularExpression percentReg("(\\d+)%");
    expression.replace(percentReg, "\\1/100");

    QJSEngine engine;
    QJSValue result = engine.evaluate(expression);
    if(result.isError()){
        return "Error";
    }

    QString res = result.toString();
    return res;
}

int CalculatorViewModel::rowCount(const QModelIndex &parent) const
{
    qDebug() << Q_FUNC_INFO;
    Q_UNUSED(parent);
    return m_buttons.count();
}

QVariant CalculatorViewModel::data(const QModelIndex &index, int role) const
{
    qDebug() << Q_FUNC_INFO;

    if(!index.isValid() || index.row() >= m_buttons.size())
        return QVariant();

    if (role == LabelRole)
        return m_buttons.at(index.row());

    return QVariant();
}

QHash<int, QByteArray> CalculatorViewModel::roleNames() const
{
    qDebug() << Q_FUNC_INFO;

    QHash<int, QByteArray> roles;
    roles[LabelRole] = "label";
    return roles;
}

QString CalculatorViewModel::calculateInputData(const QString &currentExpr, const QString &input)
{
    qDebug() << Q_FUNC_INFO;

    QString expr = currentExpr;

    if(input == "AC"){
        return "";
    }
    else if(input == "C"){
        if(!expr.isEmpty()){
            expr.chop(1);
        }
        return expr;
    }
    else if(input == "="){
        return evaluateExpression(expr);
    }
    else{
        return expr + input;
    }
}
