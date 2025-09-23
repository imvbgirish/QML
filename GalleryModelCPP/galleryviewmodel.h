#ifndef GALLERYVIEWMODEL_H
#define GALLERYVIEWMODEL_H

#include <QAbstractListModel>
#include <QDebug>
#include <QObject>
\
class GalleryViewModel : public QAbstractListModel
{
    Q_OBJECT
public:
    GalleryViewModel();
    ~GalleryViewModel();

    enum Roles{
        DATE = 1,
        IMAGE
    };

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

private:
    QMap<QDate, QStringList>  m_gallery;
    QList<QDate> m_dateList;
};

#endif // GALLERYVIEWMODEL_H
